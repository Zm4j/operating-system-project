//
// Created by os on 8/12/22.
//

#include "../h/_KernelScheduler.h"
#include "../h/syscall_c.h"
#include "../test/printing.hpp"

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
    return t;
}

int Scheduler::put(Nit* t) {
    struktura* novo = (struktura*)Memorija::alokacija(sizeof(struktura));

    if(novo == nullptr) return -1;
    novo->t=t;

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

void Scheduler::dekremntacija(int x) {
    if(headuspavane==nullptr) return;

    headuspavane->vreme-=x;
    if(headuspavane->vreme<=0){

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

    else {
        bool flag=true;
        bool flag1=false;
        for(struktura *temp = headuspavane; flag || temp!=headuspavane;temp=temp->next){
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

    Nit::running->finished=true;
    thread_dispatch();
}

void Scheduler::print() {
    printString("Running thread ");
    Nit::running->print();

    if(!head) {
        printString("No elements\n");
    }
    else {
        bool f=true;
        for (struktura *temp = head; f||temp!=head; temp = temp->next) {
            f=false;
            temp->t->print();
        }
    }
    printString("Threads that sleep:\n");

    if(!headuspavane) {
        printString("No elements\n");
    }
    else {
        for (struktura *temp = headuspavane; temp->next != headuspavane; temp = temp->next) {
            temp->t->print();
            printString("time: ");
            printInt(temp->vreme);
            printString("\n");
        }
        headuspavane->prev->t->print();
        printString("time: ");
        printInt(headuspavane->prev->vreme);
        printString("\n");
    }
    return;
}