//
// Created by os on 8/11/22.
//

#include "../h/syscall_c.h"
#include "../h/memorija.h"
#include "../h/print.h"
#include "../h/scheduler.h"
#include "../h/thread.h"
#include "../h/semafor.h"
#include "../h/konzola.h"
#include "../lib/hw.h"

extern "C" void supervisorTrap();
extern "C++" void userMain();

bool flag=true;

void userMain1(void* a){
    userMain();
    flag=false;
}

void konzolaispis(void* a){
    promenarezima();
    while(1){
        //Konzola::getcnbi()>0

        while(*((uint8*)CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT){
            char c = Konzola::getizlaz();
            *(char*)CONSOLE_TX_DATA = c;
        }
        thread_dispatch();

    }
}

void main(){

    __asm__ volatile("csrw stvec, %0" : : "r" (&supervisorTrap));

    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r" (sstatus));
    sstatus|=2;
    __asm__ volatile("csrw sstatus, %0"::"r" (sstatus));
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    Konzola::baferulaz=(Bafer*) Memorija::alokacija(Konzola::kapacitet*sizeof(Bafer));
    *Konzola::baferulaz=Bafer(Konzola::kapacitet);

    Konzola::baferizlaz=(Bafer*) Memorija::alokacija(Konzola::kapacitet*sizeof(Bafer));
    *Konzola::baferizlaz=Bafer(Konzola::kapacitet);

    Nit *t1;
    Nit *t2;
    Nit *t3;
    thread_create(&t1,nullptr,nullptr);
    thread_create(&t2,&userMain1,nullptr);
    thread_create(&t3,&konzolaispis,nullptr);

    //userMain();
    while(flag){
        thread_dispatch();
    }

    sstatus=0;
    __asm__ volatile("csrw sstatus, %0"::"r" (sstatus));
}
