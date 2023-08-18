//
// Created by os on 8/12/22.
//

#ifndef PROJECT_BASE_V1_1_THREAD_H
#define PROJECT_BASE_V1_1_THREAD_H

#include "../lib/console.h"
#include "../lib/hw.h"
#include "../h/memorija.h"
#include "../h/print.h"

class Nit {
public:
    int prekid=0;

    static int tajmer;

    int getvreme(){return vreme;}

    static int IDD;
    int ID=IDD++;
    void stampa();

    using body = void(*)(void*);

    static Nit* konstruktor(body,void*,int);

    static void dispatch();

    static void yeild();

    bool finished;

    static Nit* running;

    struct struktura{
        uint64 pc;
        uint64 sp;
    };

    Nit(){}

    static void *operator new(uint64 n){
        return Memorija::alokacija(n);
    }

    static void *operator new[](uint64 n){
        return Memorija::alokacija(n);
    }

    static void operator delete(void* p){
        Memorija::oslobadjanje(p);
    }

    static void operator delete[](void* p){
        Memorija::oslobadjanje(p);
    }

    void* arg;
    bool flagunisti=false;

private:

    Nit(body funkcija1, void* arg){
        funkcija=funkcija1;
        finished=false;
        this->arg=arg;
        struktura1.pc=(uint64)&omotac;
        //if(funkcija1!=nullptr) stek = new uint64[DEFAULT_STACK_SIZE];
        if(funkcija1!=nullptr) stek = (uint64*)Memorija::alokacija(DEFAULT_STACK_SIZE* sizeof(uint64));
        if(funkcija1!=nullptr) struktura1.sp=(uint64)&stek[DEFAULT_STACK_SIZE];
        if(funkcija1!=nullptr) vreme = DEFAULT_TIME_SLICE;
        //print(uint64(this->arg));
    }

    static void pomoc();

    static void omotac();

    struktura struktura1;

    body funkcija;
    uint64 *stek;
    uint64 vreme;


};


#endif //PROJECT_BASE_V1_1_THREAD_H
