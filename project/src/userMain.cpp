//#include "../h/Threads_C_API_test.h" // zadatak 2, niti C API i sinhrona promena konteksta
#include "../h/Threads_CPP_API_test.h" // zadatak 2., niti CPP API i sinhrona promena konteksta

//#include "../h/ConsumerProducer_C_API_test.h" // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
#include "../h/ConsumerProducer_CPP_Sync_API_test.h" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

#include "../h/ThreadSleep_C_API_test.h" // thread_sleep test C API
#include "../h/ConsumerProducer_CPP_API_test.h" // zadatak 4. CPP API i asinhrona promena konteksta

#include "../h/list.h"

///--------------------------------------------------------------------------

#include "../h/Bafer.h"
#include "../h/scheduler.h"
#include "../h/syscall_cpp.h"

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
void f1(void* a){
    print("funkcija1A\n");
    Nit::yeild();
    //while(1)
    print("funkcija1B\n");
    //Scheduler::threadsleep(50);
    sem_wait(s);
    Nit::yeild();
    print("funkcija1C\n");
    Nit::yeild();
    print("funkcija1D\n");
    Nit::yeild();
    print("funkcija1E\n");
    //sem_close();
}
void f2(void* a){
    //Scheduler::threadsleep(50);
    print("funkcija2A\n");
    Nit::yeild();
    print("funkcija2B\n");
    Nit::yeild();
    print("funkcija2C\n");
    Nit::yeild();
    print("funkcija2D\n");
    Nit::yeild();
    print("funkcija2E\n");
    print(sem_close(s));

    //Thread *t;
    //thread_create(&t,&f1,nullptr);
}
void f3(void* a){
    print("funkcija3A\n");
    Nit::yeild();
    print(sem_wait(s));
    print("funkcija3B\n");
    Nit::yeild();
    print("funkcija3C\n");
    Nit::yeild();
    print("funkcija3D\n");
    Nit::yeild();
    print("funkcija3E\n");
}
void mojtest(){
    Nit *t1,*t2,*t3;

    thread_create(&t1,&f1,nullptr);
    thread_create(&t2,&f2,nullptr);
    thread_create(&t3,&f3,nullptr);

    Scheduler::Print();

    sem_open(&s,0);

    while(Scheduler::imaniti());

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


void userMain() {
    //Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    //Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta

    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    //return;

    ///moji testovi ispod

    //KlasaMemorija();
    //PrekidnaMemorija();
    //SchedulerTest();
    //mojtest();
    //testbafer();


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

}