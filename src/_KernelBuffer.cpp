//
// Created by os on 9/14/22.
//

#include "../h/_KernelBuffer.h"
#include "../h/_KernelScheduler.h"

Bafer::Bafer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    buffer = (int *)Memorija::alokacija(sizeof(int) * cap);
    itemAvailable= new Semafor(0);
    spaceAvailable=new Semafor(_cap);
    mutexHead = new Semafor(1);
    mutexTail = new Semafor(1);
}

void Bafer::put(int val) {
    if(spaceAvailable->wait()!=-1)
        Nit::dispatch();

    if(mutexTail->wait()!=-1)
        Nit::dispatch();

    if(cnt<cap) {
        buffer[tail] = val;
        tail = (tail + 1) % cap;
        cnt++;
    }

    mutexTail->signal();
    itemAvailable->signal();
}

int Bafer::get() {
    if(itemAvailable->wait()!=-1)
        Nit::dispatch();

    if(mutexHead->wait()!=-1)
        Nit::dispatch();

    int ret=-1;
    if(cnt>0) {
        ret = buffer[head];
        head = (head + 1) % cap;
        cnt--;
    }

    mutexHead->signal();
    spaceAvailable->signal();

    return ret;
}

int Bafer::getCnt() {
    return cnt;
}
