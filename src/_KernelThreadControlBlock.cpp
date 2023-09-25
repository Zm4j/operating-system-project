//
// Created by os on 8/12/22.
//

#include "../h/_KernelThreadControlBlock.h"
#include "../h/syscall_c.h"
#include "../h/_KernelScheduler.h"
#include "../test/printing.hpp"

int Nit::IDD=0;
int Nit::tajmer=0;

Nit* Nit::running=nullptr;

extern "C" void push();

extern "C" void pop();

extern "C" void contextSwitch(Nit::struktura*, Nit::struktura*);

void Nit::print() {
    printString("ID: ");
    printInt(ID);
}

Nit* Nit::konstruktor(body funkcija, void *arg) {
    Nit* t = new Nit(funkcija, arg);
    if(Nit::running==nullptr) {Nit::running=t;}
    Scheduler::put(t);
    return t;
}

void Nit::dispatch() {

    Nit* old = Nit::running;
    if(!old->finished  && !old->killed) Scheduler::put(old);
    running = Scheduler::get();

    contextSwitch(&old->struktura1,&running->struktura1);
}

void Nit::pomoc() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r" (sstatus));
    sstatus&=~256;
    __asm__ volatile("csrw sstatus, %0"::"r" (sstatus));

    __asm__ volatile("csrw sepc, ra");
    __asm__ volatile("sret");
}

void Nit::omotac() {
    Nit::pomoc();
    running->funkcija(Nit::running->arg);
    running->finished=true;
    while(Nit::running->onHold.peekFirst()!= nullptr){
        Nit* temp = Nit::running->onHold.removeFirst();
        temp->finished=false;
        Scheduler::put(temp);
    }
    thread_dispatch();
}

void Nit::join() {
    Nit* thread1 = this;
    Nit* thread2 = Nit::running;

    thread1->onHold.addLast(thread2);
    thread2->finished=true;

    Nit::dispatch();
}
