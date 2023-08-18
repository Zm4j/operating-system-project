#include "../h/memorija.h"
#include "../h/printing.h"
#include "../h/thread.h"
#include "../h/semafor.h"
#include "../h/scheduler.h"
#include "../h/konzola.h"

extern "C" void handle(){
    uint64 volatile prekid;
    __asm__ volatile("csrr %0, scause" : "=r" (prekid));

    //printString("scause: \n");
    //printInt(prekid >> 63);
    //printInt(prekid % 16);
    //printString("\nsstatus: \n");

    //uint64 volatile status;
    //__asm__ volatile("csrr %0, sstatus" : "=r" (status));

    if(prekid%16>=8 && !(prekid >> 63)){
        __asm__ volatile("csrr x3, sepc");
        __asm__ volatile("addi x3,x3,4");
        __asm__ volatile("csrw sepc, x3");
        uint64 volatile a0;
        __asm__ volatile("mv %0, a0" : "=r" (a0));
        //mem_alloc
        if(a0==0x01){
            uint64 size;
            __asm__ volatile ("mv %0, a1" : "=r" (size));
            Memorija::alokacija(size);
            __asm__ volatile ("sd a0, 80(s0)");
        }
        //mem_free
        if(a0==0x02){
            void *size;
            __asm__ volatile ("mv %0, a1" : "=r" (size));
            Memorija::oslobadjanje(size);
            __asm__ volatile ("sd a0, 80(s0)");
        }
        //thread_create
        if(a0==0x11){
            void* volatile arg;
            void(*start_routine)(void*);
            Nit** volatile handle;

            __asm__ volatile ("mv %0, a3" : "=r" (arg));
            __asm__ volatile ("mv %0, a2" : "=r" (start_routine));
            __asm__ volatile ("mv %0, a1" : "=r" (handle));

            //print((uint64)arg);
            *handle = Nit::konstruktor(start_routine,arg,1);
            // ovo treba proveriti

            if(*handle==nullptr) {
                a0=-2;
                __asm__ volatile ("mv a0, %0" : : "r" (a0));
            }

            __asm__ volatile ("sd a0, 80(s0)");
        }
        //thread_exit
        if(a0==0x12){
            Nit::running->finished=true;
            Nit::running->flagunisti=true;
            Nit::dispatch();
        }
        //thread_dispatch
        if(a0==0x13){
            uint64 volatile sepc;
            uint64 volatile sstatus;
            __asm__ volatile("csrr %0, sepc" : "=r" (sepc)); // sepc
            __asm__ volatile("csrr %0, sstatus" : "=r" (sstatus)); // sstatus_r
            Nit::dispatch();
            __asm__ volatile("csrw sepc, %0" : : "r" (sepc)); // sepc_w
            __asm__ volatile("csrw sstatus, %0" : : "r" (sstatus)); // sstatus_w
        }
        //sem_open
        if(a0==0x21){
            Semafor** volatile handle;
            unsigned volatile val;

            __asm__ volatile ("mv %0, a2" : "=r" (val));
            __asm__ volatile ("mv %0, a1" : "=r" (handle));
            *handle = new Semafor(val);
            if(*handle==nullptr) {
                a0=-2;
                __asm__ volatile ("mv a0, %0" : : "r" (a0));
            }

            // ovo isto treba da se menja, da vraca 0 ili sta vec
            __asm__ volatile ("sd a0, 80(s0)");
        }
        //sem_close
        if(a0==0x22){
            Semafor* volatile id;
            __asm__ volatile ("mv %0, a1" : "=r" (id));

            id->close();

            int a0=0;
            __asm__ volatile ("mv a0, %0" : : "r" (a0));
            __asm__ volatile ("sd a0, 80(s0)");
        }
        //sem_wait
        if(a0==0x23){
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
            __asm__ volatile ("sd a0, 80(s0)");

        }
        //sem_signal
        if(a0==0x24){
            Semafor* volatile id;
            __asm__ volatile ("mv %0, a1" : "=r" (id));
            id->signal();
            __asm__ volatile ("sd a0, 80(s0)");
        }
        //time_sleep
        if(a0==0x31){
            time_t t;
            __asm__ volatile ("mv %0, a1" : "=r" (t));
            Scheduler::threadsleep(t);
            __asm__ volatile ("sd a0, 80(s0)");
        }
        //getc
        if(a0==0x41){
            uint64 volatile sepc;
            uint64 volatile sstatus;
            __asm__ volatile("csrr %0, sepc" : "=r" (sepc)); // sepc
            __asm__ volatile("csrr %0, sstatus" : "=r" (sstatus)); // sstatus_r

            Konzola::getulaz();
            __asm__ volatile("sd a0, 80(s0)");

            __asm__ volatile("csrw sepc, %0" : : "r" (sepc)); // sepc_w
            __asm__ volatile("csrw sstatus, %0" : : "r" (sstatus)); // sstatus_w
        }
        //putc
        if(a0==0x42){
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
        //putScheduler
        if(a0==0x69){
            Nit* volatile t;
            __asm__ volatile ("mv %0, a1" : "=r" (t));
            Scheduler::put(t);
            __asm__ volatile("sd a0, 80(s0)");
        }
        //promena rezima
        if(a0==0x70){
            uint64 volatile sstatus;
            __asm__ volatile("csrr %0, sstatus" : "=r" (sstatus));
            sstatus|=256;
            __asm__ volatile("csrw sstatus, %0"::"r" (sstatus));
        }
        if(a0==0x68){
            void* volatile arg;
            void(*start_routine)(void*);
            Nit** volatile handle;

            __asm__ volatile ("mv %0, a3" : "=r" (arg));
            __asm__ volatile ("mv %0, a2" : "=r" (start_routine));
            __asm__ volatile ("mv %0, a1" : "=r" (handle));

            //print((uint64)arg);
            *handle = Nit::konstruktor(start_routine,arg,0);
            // ovo treba proveriti

            if(*handle==nullptr) {
                a0=-2;
                __asm__ volatile ("mv a0, %0" : : "r" (a0));
            }

            __asm__ volatile ("sd a0, 80(s0)");
        }
    }
    else{
        if(prekid == 0x8000000000000001UL){
            //spoljasnji prekidi
            uint64 maska = 2;
            Nit::tajmer++;
            Scheduler::dekremntacija(1); //ovo je za uspavane niti

            if (Nit::tajmer % (DEFAULT_TIME_SLICE) == 0) {
                //Scheduler::Print();

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
        if(prekid == 0x8000000000000009UL){
            int volatile h = plic_claim();
            if(h==CONSOLE_IRQ){
                while(*(uint8*)CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT){
                    Konzola::putulaz(*(char*)CONSOLE_RX_DATA);
                }
            }
            plic_complete(CONSOLE_IRQ);
        }
        else if(prekid!=0x8000000000000001UL) {
            printString("scause: \n");
            printInt(prekid >> 63);
            printInt(prekid % 16);
            printString("\nsstatus: \n");
            //print(status);
            while (1);
        }
    }
}

