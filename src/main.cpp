//
// Created by os on 8/11/22.
//

#include "../h/syscall_cpp.h"
#include "../h/_KernelMemory.h"
#include "../h/_KernelScheduler.h"
#include "../h/_KernelThreadControlBlock.h"
#include "../h/_KernelSemaphore.h"
#include "../h/_KernelConsole.h"
#include "../lib/hw.h"

extern "C" void supervisorTrap();
extern "C++" void userMain();

bool flag=true;
bool flagConsole=true;

void userMain1(void* a){
    userMain();
    flag=false;
}
void konzolaispis(void* a){
    promenarezima();
    while(1){
        while(*((uint8*)CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT){
            char c = Konzola::getizlaz();
            if(c) *(char*)CONSOLE_TX_DATA = c;
            if(!flag) flagConsole=false;
        }
    }
}

void main(){
    __asm__ volatile("csrw stvec, %0" : : "r" (&supervisorTrap));

    Konzola::baferulaz=(Bafer*) Memorija::alokacija(Konzola::kapacitet*sizeof(Bafer));
    *Konzola::baferulaz=Bafer(Konzola::kapacitet);

    Konzola::baferizlaz=(Bafer*) Memorija::alokacija(Konzola::kapacitet*sizeof(Bafer));
    *Konzola::baferizlaz=Bafer(Konzola::kapacitet);

    Nit *t1;
    thread_create(&t1,nullptr,nullptr);
    Nit *t2;
    thread_create(&t2,&userMain1,nullptr);
    Nit *t3;
    thread_create(&t3,&konzolaispis,nullptr);

    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r" (sstatus));
    sstatus|=2;
    __asm__ volatile("csrw sstatus, %0"::"r" (sstatus));

    while(flagConsole){
        thread_dispatch();
    }

    sstatus=0;
    __asm__ volatile("csrw sstatus, %0"::"r" (sstatus));
}

/*
//testovi za alokaciju preko klase Memorija kernela
int KlasaMemorija() {
    Memorija::Print();
    void* b=Memorija::alokacija(100);
    Memorija::Print();
    void* c=Memorija::alokacija(20);
    Memorija::Print();
    void* d=Memorija::alokacija(50);
    Memorija::Print();
    void* e=Memorija::alokacija(50);
    Memorija::Print();
    print(Memorija::oslobadjanje(c));
    Memorija::Print();
    print(Memorija::oslobadjanje(e));
    Memorija::Print();
    print(Memorija::oslobadjanje(d));
    Memorija::Print();
    print(Memorija::oslobadjanje(b));
    Memorija::Print();

    putc('-');
    putc('\n');
    print((size_t)HEAP_START_ADDR);
    print((size_t)b);
    print((size_t)c);
    print((size_t)d);
    print((size_t)e);

    return 0;
}

//testovi za alokaciju preko prekidne rutine
int PrekidnaMemorija(){
    Memorija::Print();
    putc('\n');
    void* b=mem_alloc(20);
    Memorija::Print();
    void* c=mem_alloc(20);
    Memorija::Print();
    mem_alloc(54);
    Memorija::Print();
    mem_free(c);
    Memorija::Print();
    mem_free(b);
    print((size_t)b - (size_t)HEAP_START_ADDR);
    print((size_t)c - (size_t)HEAP_START_ADDR);

    return 0;
}

//testovi za scheduler, testira da li radi ulancavanje thredova
int SchedulerTest(){
    Nit *t1 = new Nit();
    Nit *t2 = new Nit();
    Nit *t3 = new Nit();
    Nit *t4 = new Nit();

    //print("Memorija:\n");
    //Memorija::Print();
    Scheduler::put(t1);
    Scheduler::Print();
    Scheduler::put(t2);
    Scheduler::Print();
    Scheduler::put(t3);
    Scheduler::Print();
    Scheduler::put(t4);
    Scheduler::Print();
    //print("Memorija:\n");
    //Memorija::Print();
    Scheduler::get();
    Scheduler::Print();
    Scheduler::get();
    Scheduler::Print();
    Scheduler::get();
    //print("Memorija:\n");
    //Memorija::Print();
    Scheduler::Print();
    Scheduler::get();
    Scheduler::Print();
    Scheduler::get();
    Scheduler::Print();
    Scheduler::put(t1);
    Scheduler::Print();
    Scheduler::get();
    Scheduler::Print();


    return 0;
}

 //test za semafore i za sleep i sta sve ne
Semafor *s;
Nit *t1,*t2,*t3;
void f1(void* a){
    print("funkcija1A\n");
    thread_dispatch();
    //while(1)
    print("funkcija1B\n");
    //Scheduler::threadsleep(50);
    //sem_wait(s);
    thread_dispatch();
    print("funkcija1C\n");
    thread_dispatch();
    print("funkcija1D\n");
    thread_dispatch();
    print("funkcija1E\n");
    //sem_close();

}
void f2(void* a){
    thread_join(t1);
    //Scheduler::threadsleep(50);
    print("funkcija2A\n");
    thread_dispatch();
    print("funkcija2B\n");
    thread_dispatch();
    print("funkcija2C\n");
    thread_dispatch();
    print("funkcija2D\n");
    thread_dispatch();
    print("funkcija2E\n");
    print(sem_close(s));
    //for(int i=0;i<1000000000;i++);

    //Thread *t;
    //thread_create(&t,&f1,nullptr);

}
void f3(void* a){
    thread_join(t2);
    print("funkcija3A\n");
    thread_dispatch();
    //print(sem_wait(s));
    print("funkcija3B\n");
    thread_dispatch();
    print("funkcija3C\n");
    thread_dispatch();
    print("funkcija3D\n");
    thread_dispatch();
    print("funkcija3E\n");
}
void mojtest(){


    thread_create(&t1,&f1,nullptr);
    thread_create(&t2,&f2,nullptr);
    thread_create(&t3,&f3,nullptr);

    //Scheduler::Print();

    sem_open(&s,0);

    thread_join(t3);
    print("gotova 3");
    while(1);

}

//test za bafer
void bafer1(void* a){
    for(int i=0;i<30;i++){
        putc(i+'a');
        time_sleep((i+1)*5);
    }
}
void bafer2(void* a){
    for(int i=0;i<30;i++){
        int g=getc();
        if(g!=-1){
            print(g);
            //b->Print();
        }
        time_sleep(20);
    }
}
void testbafer(){

    putc('b');
    Bafer B(20);

    Nit *t1,*t2;
    thread_create(&t1,bafer1,&B);
    thread_create(&t2,bafer2,&B);

    Scheduler::Print();

    while(Scheduler::imaniti()){
        //Scheduler::Print();
        //print('a');
    }
}

void alo(){
    printInt(10);
}

class AAA:public PeriodicThread{
    int a;
public:
    AAA(int a): PeriodicThread(a), a(a){}

    void periodicActivation() override{
        alo();
    }
};

 void f1(void *){
    printString("A - 1\n");
    Thread::dispatch();
    printString("A - 2\n");
    Thread::dispatch();
    printString("A - 3\n");
    Thread::dispatch();
    printString("A - 4\n");
    Thread::dispatch();
    printString("A - 5\n");
    Thread::dispatch();
}
void f2(void *){
    printString("B - 1\n");
    Thread::dispatch();
    printString("B - 2\n");
    Thread::dispatch();
    printString("B - 3\n");
    Thread::dispatch();
    printString("B - 4\n");
    Thread::dispatch();
    printString("B - 5\n");
    Thread::dispatch();
}
void f3(void *){
    printString("C - 1\n");
    Thread::dispatch();
    printString("C - 2\n");
    Thread::dispatch();
    printString("C - 3\n");
    Thread::dispatch();
    printString("C - 4\n");
    Thread::dispatch();
    printString("C - 5\n");
    Thread::dispatch();
}

void myTest(){

    Thread::maxThreads(1);

    //Thread* t1 = new Thread(&f1,nullptr);
    //Thread* t2 = new Thread(&f2,nullptr);
    //Thread* t3 = new Thread(&f3,nullptr);
    Thread* t1 = new Thread1();
    Thread* t2 = new Thread2();
    Thread* t3 = new Thread3();

    t1->start();
    t2->start();
    t3->start();

    t1->join();
    t2->join();
    t3->join();

    printString("GOTOVO");
}

///moji testovi ispod


    List<int> lista;
    int *hh = (int*)(mem_alloc(sizeof(int)));
    *hh=5;
    int *hh1 = (int*)(mem_alloc(sizeof(int)));
    *hh1=5;
    lista.addLast(hh1);(*hh)+=1;
    lista.addLast(hh);(*hh)+=1;
    lista.addLast(hh);(*hh)+=1;
    lista.addLast(hh);(*hh)+=1;

    printInt(*lista.peekFirst());
    printInt(*lista.peekLast());

    printString("aaaaaa");

    int a1=1;
    printString("print\n");
    printString("???\n");
    printInt(a1);

    AAA *a = new AAA(5);

    a->start();
    for(int i=0;i<1000000000;i++){

    }

    a->zaustavi();

    //syscall_c.h napravi funkciju
    //syscall_c.cpp definisi funkciju
    //provera.cpp
    //
    //


    mojtest();

*/