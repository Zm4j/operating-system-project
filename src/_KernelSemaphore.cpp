//
// Created by os on 8/20/22.
//

#include "../h/_KernelSemaphore.h"
#include "../h/_KernelMemory.h"
#include "../h/_KernelScheduler.h"
#include "../test/printing.hpp"

int Semafor::idd=0;

int Semafor::wait() {
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
    if (val++>=0) return -1;

    if(head==nullptr) return -2;
    struktura* temp = head;

    head=temp->next;

    temp->t->finished=false;
    Scheduler::put(temp->t);

    Memorija::oslobadjanje(temp);
    return 0;
}

void Semafor::close() {
    while(this->head){
        this->head->t->prekid=5;
        this->signal();
    }

    Memorija::oslobadjanje(this);
}

void Semafor::print() {
    printString("SemaphoreID: ");
    printInt(id);
    printString(", val = ");
    printInt(val);
    printString("\nBlocked threads:\n");
    struktura *temp=head;
    while(temp){
        temp->t->print();
        temp=temp->next;
    }
}
