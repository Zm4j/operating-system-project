#include "../h/_KernelMemory.h"
#include "../h/_KernelThreadControlBlock.h"
#include "../h/_KernelSemaphore.h"
#include "../h/_KernelScheduler.h"
#include "../h/_KernelConsole.h"
#include "../test/printing.hpp"

typedef void (*FP)();
static FP functions[500];
static bool scauseFlag=false;

static void initialization();
void mem__alloc();
void mem__free();
void thread__create();
void thread__exit();
void thread__dispatch();
void thread__join();
void sem__open();
void sem__close();
void sem__wait();
void sem__signal();
void time__sleep();
void getc_();
void putc_();
void promena();

extern "C" void handle(){

    if(functions[0x01]==nullptr){
        initialization();
    }

    uint64 volatile prekid;
    __asm__ volatile("csrr %0, scause" : "=r" (prekid));

    if(prekid%16>=8 && !(prekid >> 63)){
        __asm__ volatile("csrr x3, sepc");
        __asm__ volatile("addi x3,x3,4");
        __asm__ volatile("csrw sepc, x3");
        uint64 volatile a0;
        __asm__ volatile("mv %0, a0" : "=r" (a0));

        functions[a0]();
        __asm__ volatile ("sd a0, 80(s0)");
    }
    else{

        if(prekid == 0x8000000000000001UL){
            uint64 maska = 2;
            Nit::tajmer++;
            Scheduler::dekremntacija(1);

            if (Nit::tajmer % (DEFAULT_TIME_SLICE) == 0) {
                uint64 volatile sepc;
                uint64 volatile sstatus;
                __asm__ volatile("csrr %0, sepc" : "=r" (sepc)); // sepc
                __asm__ volatile("csrr %0, sstatus" : "=r" (sstatus)); // sstatus_r
                Nit::dispatch();
                __asm__ volatile("csrw sepc, %0" : : "r" (sepc)); // sepc_w
                __asm__ volatile("csrw sstatus, %0" : : "r" (sstatus)); // sstatus_w
                Nit::tajmer = 0;
            }
            __asm__ volatile("csrc sip, %0"::"r" (maska));
        }

        else if(prekid == 0x8000000000000009UL){
            int volatile h = plic_claim();
            if(h==CONSOLE_IRQ){
                while(*(uint8*)CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT){
                    Konzola::putulaz(*(char*)CONSOLE_RX_DATA);
                }
            }
            plic_complete(CONSOLE_IRQ);
        }
        else if(prekid!=0x8000000000000001UL) {
            if (scauseFlag == false) {
                printString("BNT: \n");
                printInt(prekid >> 63);
                printString("value: \n");
                printInt(prekid % 16);
                scauseFlag=true;
            }
        }
    }
}





static void initialization(){
    functions[0x01] = &mem__alloc;
    functions[0x02] = &mem__free;
    functions[0x11] = &thread__create;
    functions[0x12] = &thread__exit;
    functions[0x13] = &thread__dispatch;
    functions[0x14] = &thread__join;
    functions[0x21] = &sem__open;
    functions[0x22] = &sem__close;
    functions[0x23] = &sem__wait;
    functions[0x24] = &sem__signal;
    functions[0x31] = &time__sleep;
    functions[0x41] = &getc_;
    functions[0x42] = &putc_;
    functions[0x70] = &promena;
}

void mem__alloc(){
    uint64 size;
    __asm__ volatile ("mv %0, a1" : "=r" (size));
    Memorija::alokacija(size);
}
void mem__free(){
    void *size;
    __asm__ volatile ("mv %0, a1" : "=r" (size));
    Memorija::oslobadjanje(size);
}
void thread__create(){
    void* volatile arg;
    void(*start_routine)(void*);
    Nit** volatile handle;

    __asm__ volatile ("mv %0, a3" : "=r" (arg));
    __asm__ volatile ("mv %0, a2" : "=r" (start_routine));
    __asm__ volatile ("mv %0, a1" : "=r" (handle));

    *handle = Nit::konstruktor(start_routine,arg);

    if(*handle==nullptr) {
        uint64 volatile a0=-2;
        __asm__ volatile ("mv a0, %0" : : "r" (a0));
    }

}
void thread__exit(){
    Nit::running->finished=true;
    Nit::dispatch();
}
void thread__dispatch(){
    uint64 volatile sepc;
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sepc" : "=r" (sepc)); // sepc
    __asm__ volatile("csrr %0, sstatus" : "=r" (sstatus)); // sstatus_r
    Nit::dispatch();
    __asm__ volatile("csrw sepc, %0" : : "r" (sepc)); // sepc_w
    __asm__ volatile("csrw sstatus, %0" : : "r" (sstatus)); // sstatus_w
}
void thread__join(){
    Nit *volatile thread;
    __asm__ volatile ("mv %0, a1" : "=r" (thread));

    if(thread!=nullptr && !thread->finished){
        uint64 volatile sepc;
        uint64 volatile sstatus;
        __asm__ volatile("csrr %0, sepc" : "=r" (sepc)); // sepc
        __asm__ volatile("csrr %0, sstatus" : "=r" (sstatus)); // sstatus_r
        thread->join();
        __asm__ volatile("csrw sepc, %0" : : "r" (sepc)); // sepc_w
        __asm__ volatile("csrw sstatus, %0" : : "r" (sstatus)); // sstatus_w
    }
}
void sem__open(){
    Semafor** volatile handle;
    unsigned volatile val;

    __asm__ volatile ("mv %0, a2" : "=r" (val));
    __asm__ volatile ("mv %0, a1" : "=r" (handle));
    *handle = new Semafor(val);
    if(*handle==nullptr) {
        uint64 volatile a0=-2;
        __asm__ volatile ("mv a0, %0" : : "r" (a0));
    }
}
void sem__close(){
    Semafor* volatile id;
    __asm__ volatile ("mv %0, a1" : "=r" (id));

    id->close();

    int a0=0;
    __asm__ volatile ("mv a0, %0" : : "r" (a0));
}
void sem__wait(){
    Semafor* volatile id;
    __asm__ volatile ("mv %0, a1" : "=r" (id));
    //if(id==nullptr) print("asd\n");
    int volatile a0;

    a0=id->wait();

    uint64 volatile sepc;
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sepc" : "=r" (sepc)); // sepc
    __asm__ volatile("csrr %0, sstatus" : "=r" (sstatus)); // sstatus_r
    Nit::dispatch();
    __asm__ volatile("csrw sepc, %0" : : "r" (sepc)); // sepc_w
    __asm__ volatile("csrw sstatus, %0" : : "r" (sstatus)); // sstatus_w

    a0=Nit::running->prekid;
    __asm__ volatile ("mv a0, %0" : : "r" (a0));
}
void sem__signal(){
    Semafor* volatile id;
    __asm__ volatile ("mv %0, a1" : "=r" (id));
    id->signal();
}
void time__sleep(){
    time_t t;
    __asm__ volatile ("mv %0, a1" : "=r" (t));
    Scheduler::threadsleep(t);
}
void getc_(){
    uint64 volatile sepc;
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sepc" : "=r" (sepc)); // sepc
    __asm__ volatile("csrr %0, sstatus" : "=r" (sstatus)); // sstatus_r

    Konzola::getulaz();
    __asm__ volatile("sd a0, 80(s0)");

    __asm__ volatile("csrw sepc, %0" : : "r" (sepc)); // sepc_w
    __asm__ volatile("csrw sstatus, %0" : : "r" (sstatus)); // sstatus_w
}
void putc_(){
    char volatile c;
    uint64 volatile sepc;
    uint64 volatile sstatus;
    __asm__ volatile ("mv %0, a1" : "=r" (c));
    __asm__ volatile("csrr %0, sepc" : "=r" (sepc)); // sepc
    __asm__ volatile("csrr %0, sstatus" : "=r" (sstatus)); // sstatus_r

    //PUTIZLAZ TREBA
    Konzola::putizlaz(c);

    __asm__ volatile("csrw sepc, %0" : : "r" (sepc)); // sepc_w
    __asm__ volatile("csrw sstatus, %0" : : "r" (sstatus)); // sstatus_w
}
void promena(){
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r" (sstatus));
    sstatus|=256;
    __asm__ volatile("csrw sstatus, %0"::"r" (sstatus));
}