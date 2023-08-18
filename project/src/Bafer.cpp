//
// Created by os on 9/14/22.
//

#include "../h/Bafer.h"
#include "../h/scheduler.h"

Bafer::Bafer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    buffer = (int *)Memorija::alokacija(sizeof(int) * cap);
    itemAvailable= new Semafor(0);
    spaceAvailable=new Semafor(_cap);
    mutexHead = new Semafor(1);
    mutexTail = new Semafor(1);
}

Bafer::~Bafer() {
    /*
    while (getCnt() > 0) {
        char ch = buffer[head];
        putc(ch);
        head = (head + 1) % cap;
    }

    mem_free(buffer);
    sem_close(itemAvailable);
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);*/
}

void Bafer::put(int val) {
    //print(spaceAvailable->val);
    if(spaceAvailable->val==0){
        //print("a");
    }
    if(spaceAvailable->wait()!=-1){

        //spaceAvailable->Print();
        //Scheduler::Print();
        //__putc('a');
        Nit::dispatch();
    }
    if(mutexTail->wait()!=-1){
        Nit::dispatch();
    }

    if(cnt<cap) {
        buffer[tail] = val;
        tail = (tail + 1) % cap;
        cnt++;
    }

    mutexTail->signal();
    itemAvailable->signal();
}

int Bafer::get() {

    //print(itemAvailable->val);
    if(itemAvailable->wait()!=-1){
        //itemAvailable->Print();
        Nit::dispatch();
    }
    if(mutexHead->wait()!=-1){
        Nit::dispatch();
    }

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

void Bafer::Print() {

    if(mutexHead->wait()!=-1){
        Nit::dispatch();
    }
    if(mutexTail->wait()!=-1){
        Nit::dispatch();
    }

    int temp=head;
    print("BAFER:\n");
    while(temp!=tail){
        print(buffer[temp]);
        temp=(temp+1)%cap;
    }
    print("-------\n");

    mutexTail->signal();
    mutexHead->signal();
}
