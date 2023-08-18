//
// Created by os on 8/12/22.
//

#include "../h/thread.h"
#include "../h/syscall_c.h"
#include "../h/scheduler.h"

int Nit::IDD=0;
int Nit::tajmer=0;

Nit* Nit::running=nullptr;

extern "C" void push();

extern "C" void pop();

extern "C" void contextSwitch(Nit::struktura*, Nit::struktura*);

void Nit::stampa() {
    print("ID: ");
    print(ID);
}

Nit* Nit::konstruktor(body funkcija, void *arg,int a) {
    Nit* t = new Nit(funkcija, arg);
    if(Nit::running==nullptr) {Nit::running=t; return t;}
    if(a) Scheduler::put(t);
    return t;
}

void Nit::yeild() {
    //push();
    //dispatch();
    //pop();

    thread_dispatch();
}

void Nit::dispatch() {

    if(running==nullptr) {
        print("krindz\n");
        return;
    }
    //if(!Scheduler::gethead()) return;

    Nit* old = Nit::running;
    if(!old->finished) Scheduler::put(old);
    running = Scheduler::get();


    //if(old->flagunisti){
    //    Memorija::oslobadjanje(old);
    //}
    //Scheduler::Print();
    //print("b\n");
    //if(running==old) dispatch();

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
    thread_dispatch();
}
