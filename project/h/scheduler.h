//
// Created by os on 8/12/22.
//

#ifndef PROJECT_BASE_V1_1_SCHEDULER_H
#define PROJECT_BASE_V1_1_SCHEDULER_H

// scheduler - klasa koja sadrzi ulancanu listu
// Thread-ova

#include "../h/thread.h"

class Scheduler {
public:
    static int put(Nit* t);
    static Nit* get();

    static void dekremntacija(int);
    static void threadsleep(int a);

    static void Print();
    static bool imaniti();
    static bool gethead() {return head!=nullptr;}

private:

    static int brojb;
    static int brojj;

    struct struktura{
        Nit* t;
        int vreme;
        struktura* next;
        struktura* prev;
    };

    static struktura *headuspavane;
    static struktura *head;
};


#endif //PROJECT_BASE_V1_1_SCHEDULER_H
