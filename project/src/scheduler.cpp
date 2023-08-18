//
// Created by os on 8/12/22.
//

#include "../h/scheduler.h"

int Scheduler::brojj=0;
int Scheduler::brojb=0;

Scheduler::struktura* Scheduler::head = nullptr;
Scheduler::struktura* Scheduler::headuspavane = nullptr;

Nit *Scheduler::get() {
    if(head==nullptr) {return nullptr;}

    struktura *temp = head;
    Nit *t = head->t;

    head->next->prev=head->prev;
    head->prev->next=head->next;

    head=temp->next;
    if(head==temp) head=nullptr;

    Memorija::oslobadjanje(temp);
    brojj--;
    return t;
}

int Scheduler::put(Nit* t) {
    struktura* novo = (struktura*)Memorija::alokacija(sizeof(struktura));

    if(novo == nullptr) return -1;
    novo->t=t;

    brojj++;

    if(head==nullptr){
        head = novo;
        head->next=head;
        head->prev=head;
        return 0;
    }

    struktura* temp = head->prev;
    temp->next=novo;
    novo->prev=temp;
    novo->next=head;
    head->prev=novo;
    return 0;
}

void Scheduler::Print() {
    print("\n------------------\nlista:\n");
    print("Running thread ");Nit::running->stampa();

    if(!head) {
        print("nula elementa\n");
    }
    else {
        bool f=true;
        for (struktura *temp = head; f||temp!=head; temp = temp->next) {
            f=false;
            temp->t->stampa();
        }
        //head->prev->t->stampa();
    }
    print("lista uspavanih:\n");

    if(!headuspavane) {
        print("nula elementa\n");
    }
    else {
        for (struktura *temp = headuspavane; temp->next != headuspavane; temp = temp->next) {
            temp->t->stampa();
            print("vreme: ");
            //print(temp->t->getvreme());
            print(temp->vreme);
        }
        headuspavane->prev->t->stampa();
        print("vreme: ");
        //print(headuspavane->prev->t->getvreme());
        print(headuspavane->prev->vreme);
    }
    print("------------------\n");
    return;
}

void Scheduler::dekremntacija(int x) {
    if(headuspavane==nullptr) return;

    headuspavane->vreme-=x;
    if(headuspavane->vreme<=0){
        //print("AAAAAAAAAAAAAAAa\n");

        Scheduler::struktura *temp=headuspavane;
        if(headuspavane->next==headuspavane) headuspavane=nullptr;
        else {
            Scheduler::struktura *pomoc = headuspavane->next;
            headuspavane->prev->next = headuspavane->next;
            headuspavane->next->prev = headuspavane->prev;
            headuspavane = pomoc;
        }

        temp->t->finished=false;
        Scheduler::put(temp->t);
        brojb--;
        Memorija::oslobadjanje(temp);
    }

}

void Scheduler::threadsleep(int vreme) {
    if(vreme==0) return;
    if(vreme%DEFAULT_TIME_SLICE) vreme+=DEFAULT_TIME_SLICE-vreme%DEFAULT_TIME_SLICE;

    struktura* novo = (struktura*)Memorija::alokacija(sizeof(struktura));

    if(novo == nullptr) return;
    novo->t=Nit::running;
    novo->vreme=vreme;

    if(headuspavane==nullptr){
        headuspavane = novo;
        headuspavane->next=headuspavane;
        headuspavane->prev=headuspavane;
    }
    // ovde u else treba optimizacija ali me briga sad za to
    // ovo za sad radi najnormlanije dodavanje cvora na kraj liste, svaki cvor treba da se dekrementira
    else {
        bool flag=true;
        bool flag1=false;
        for(struktura *temp = headuspavane; flag || temp!=headuspavane;temp=temp->next){
            //print(temp->vreme);
            //print(novo->vreme);
            flag=false;
            if(temp->vreme > novo->vreme){
                temp->vreme-=novo->vreme;

                novo->next=temp;
                novo->prev=temp->prev;
                temp->prev->next=novo;
                temp->prev=novo;

                if(temp==headuspavane) headuspavane=novo;
                flag1=true;
            }
            else{
                novo->vreme-=temp->vreme;
            }
        }
        if(!flag1) {
            struktura *temp = headuspavane->prev;
            temp->next = novo;
            novo->prev = temp;
            novo->next = headuspavane;
            headuspavane->prev = novo;
        }
    }


    brojb++;

    Nit::running->finished=true;
    Nit::yeild();
}

bool Scheduler::imaniti() {
    return brojj>0 || brojb>0;
}
