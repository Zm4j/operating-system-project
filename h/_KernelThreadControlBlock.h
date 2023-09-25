//
// Created by os on 8/12/22.
//

#ifndef PROJECT_BASE_V1_1_THREAD_H
#define PROJECT_BASE_V1_1_THREAD_H

#include "../lib/hw.h"
#include "../h/_KernelMemory.h"
#include "../h/list.h"

class Nit {
public:
    struct struktura{
        uint64 pc;
        uint64 sp;
    };

    using body = void(*)(void*);

    static int tajmer;
    static Nit* running;
    int prekid=0;
    bool finished=false;
    bool killed=false;

    static void *operator new(uint64 n){return Memorija::alokacija(n);}
    static void *operator new[](uint64 n){return Memorija::alokacija(n);}
    static void operator delete(void* p){Memorija::oslobadjanje(p);}
    static void operator delete[](void* p){Memorija::oslobadjanje(p);}

    static Nit* konstruktor(body,void*);
    static void dispatch();
    void join();
    void print();

private:
    static int IDD;
    int ID=IDD++;

    struktura struktura1;
    body funkcija;
    void* arg;
    uint64 *stek;
    uint64 vreme;
    List <Nit> onHold;

    Nit(body funkcija1, void* arg){
        funkcija=funkcija1;
        finished=false;
        this->arg=arg;
        struktura1.pc=(uint64)&omotac;
        if(funkcija1!=nullptr) stek = (uint64*)Memorija::alokacija(DEFAULT_STACK_SIZE* sizeof(uint64));
        if(funkcija1!=nullptr) struktura1.sp=(uint64)&stek[DEFAULT_STACK_SIZE];
        if(funkcija1!=nullptr) vreme = DEFAULT_TIME_SLICE;
    }

    static void pomoc();
    static void omotac();
};


#endif //PROJECT_BASE_V1_1_THREAD_H
