//
// Created by os on 8/20/22.
//

#include "../h/semafor.h"
#include "../h/memorija.h"
#include "../h/scheduler.h"

int Semafor::idd=0;

int Semafor::wait() {
    //neki if treba za val
    if (--val>=0) return -1;

    struktura* temp = (struktura*)Memorija::alokacija(sizeof(struktura));

    if(temp==nullptr) return -2;

    temp->t=Nit::running;
    temp->next=nullptr;

    if(head==nullptr){
        head=temp;
        tail=temp;
    }
    else{
        tail->next=temp;
        tail=temp;
    }

    Nit::running->finished=true;
    return Nit::running->prekid;
}

int Semafor::signal() {

    //neki if treba za val
    if (val++>=0) return -1;

    if(head==nullptr) return -2;
    struktura* temp = head;

    head=temp->next;

    temp->t->finished=false;
    Scheduler::put(temp->t);

    Memorija::oslobadjanje(temp);
    return 0;
}

void Semafor::Print() {
    print("SEMAFOR\nID: ");
    print(id);
    print("VAL: ");
    print(val);
    print("LISTA:\n");
    struktura *temp=head;
    while(temp){
        temp->t->stampa();
        temp=temp->next;
    }
    print("kraj\n");
}

void Semafor::close() {
    while(this->head){
        this->head->t->prekid=5;
        this->signal();
    }

    Memorija::oslobadjanje(this);
}
