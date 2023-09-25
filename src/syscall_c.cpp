//
// Created by os on 8/10/22.
//

#include "../h/syscall_c.h"
#include "../test/printing.hpp"

void* mem_alloc(size_t size){

    __asm__ volatile("mv a1, %0" : : "r" (size)); // u a1 stavljamo size
    __asm__ volatile("mv a0, %0" : : "r" (0x01)); // u a0 stavljamo 0x01
    __asm__ volatile("ecall");

    void* rez;
    __asm__ volatile("mv %0, a0" : "=r" (rez));
    return rez;
}
int mem_free(void* add){
    __asm__ volatile("mv a1, %0" : : "r" (add)); // u a1 stavljamo add
    __asm__ volatile("mv a0, %0" : : "r" (0x02)); // u a0 stavljamo 0x01
    __asm__ volatile("ecall");

    int rez;
    __asm__ volatile("mv %0, a0" : "=r" (rez));
    return rez;
}

int thread_create(thread_t* handle, void(*start_routine)(void*),void* arg){
    __asm__ volatile("mv a3, %0" : : "r" (arg));
    __asm__ volatile("mv a2, %0" : : "r" (start_routine));
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    __asm__ volatile("mv a0, %0" : : "r" (0x11));

    __asm__ volatile("ecall");

    int rez;
    __asm__ volatile("mv %0, a0" : "=r" (rez));
    return rez;
}
int thread_exit(){
    __asm__ volatile("mv a0, %0" : : "r" (0x12));
    __asm__ volatile("ecall");
    return 0;
}
void thread_dispatch(){
    __asm__ volatile("mv a0, %0" : : "r" (0x13));
    __asm__ volatile("ecall");
}
void thread_join(Nit* thread){
    __asm__ volatile("mv a1, %0" : : "r" (thread));
    __asm__ volatile("mv a0, %0" : : "r" (0x14));
    __asm__ volatile("ecall");
}

int sem_open(sem_t* handle, unsigned init){
    __asm__ volatile("mv a2, %0" : : "r" (init));
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    __asm__ volatile("mv a0, %0" : : "r" (0x21));

    __asm__ volatile("ecall");

    int rez;
    __asm__ volatile("mv %0, a0" : "=r" (rez));
    return rez;
}
int sem_close(sem_t handle){
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    __asm__ volatile("mv a0, %0" : : "r" (0x22));

    __asm__ volatile("ecall");

    int rez;
    __asm__ volatile("mv %0, a0" : "=r" (rez));
    return rez;
}
int sem_wait(sem_t id){
    __asm__ volatile("mv a1, %0" : : "r" (id));
    __asm__ volatile("mv a0, %0" : : "r" (0x23));

    __asm__ volatile("ecall");

    int rez;
    __asm__ volatile("mv %0, a0" : "=r" (rez));
    return rez;
}
int sem_signal(sem_t id){
    __asm__ volatile("mv a1, %0" : : "r" (id));
    __asm__ volatile("mv a0, %0" : : "r" (0x24));

    __asm__ volatile("ecall");

    int rez;
    __asm__ volatile("mv %0, a0" : "=r" (rez));
    return rez;
}

int time_sleep(time_t t) {
    __asm__ volatile("mv a1, %0" : : "r" (t));
    __asm__ volatile("mv a0, %0" : : "r" (0x31));

    __asm__ volatile("ecall");

    int rez;
    __asm__ volatile("mv %0, a0" : "=r" (rez));
    return rez;
}

char getc(){
    __asm__ volatile("mv a0, %0" : : "r" (0x41));

    __asm__ volatile("ecall");

    char rez;
    __asm__ volatile("mv %0, a0" : "=r" (rez));

    return rez;
}
void putc(char c){
    __asm__ volatile("mv a1, %0" : : "r" (c));
    __asm__ volatile("mv a0, %0" : : "r" (0x42));

    __asm__ volatile("ecall");
}

void promenarezima() {
    __asm__ volatile("mv a0, %0" : : "r" (0x70));

    __asm__ volatile("ecall");
}
