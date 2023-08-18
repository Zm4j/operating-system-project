//
// Created by os on 8/20/22.
//

#ifndef PROJECT_BASE_V1_1_SEMAFOR_H
#define PROJECT_BASE_V1_1_SEMAFOR_H

#include "thread.h"

class Semafor {
private:

    static int idd;
    int id=0;

    struct struktura{
        Nit *t;
        struktura* next;
    };

    struktura *tail=nullptr;
    struktura *head=nullptr;

public:
    int val;

    void Print();

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

    Semafor(unsigned n=1):val(n){}

    int wait();
    int signal();
    void close();

};


#endif //PROJECT_BASE_V1_1_SEMAFOR_H
