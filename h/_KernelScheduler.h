//
// Created by os on 8/12/22.
//

#ifndef PROJECT_BASE_V1_1_SCHEDULER_H
#define PROJECT_BASE_V1_1_SCHEDULER_H

// scheduler - klasa koja sadrzi ulancanu listu
// Thread-ova

#include "../h/_KernelThreadControlBlock.h"
#include "../h/list.h"

class Scheduler {
public:
    static int put(Nit* t);
    static Nit* get();

    static void dekremntacija(int);
    static void threadsleep(int a);

    static void kill(int id);

    static void print();

    struct struktura{
        Nit* t;
        int vreme;
        struktura* next;
        struktura* prev;
    };

private:
    static struktura *headuspavane;
    static struktura *head;
};


#endif //PROJECT_BASE_V1_1_SCHEDULER_H

//Nit *Scheduler::get() {
//
//    if(head->peekFirst()==nullptr) {return nullptr;}
//
//    struktura *temp = head->removeFirst();
//    Nit *t = temp->t;
//
//    Memorija::oslobadjanje(temp);
//    return t;
//}
//
//int Scheduler::put(Nit* t) {
//    struktura* novo = (struktura*)Memorija::alokacija(sizeof(struktura));
//
//    if(novo == nullptr) return -1;
//    novo->t=t;
//
//    head->addLast(novo);
//
//    return 0;
//}