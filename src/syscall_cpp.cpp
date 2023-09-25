#include "../h/syscall_cpp.h"

void* operator new(size_t h){
    return mem_alloc(h);
}

void operator delete(void* x){
    mem_free(x);
}

Thread::Thread(void (*body)(void *), void *arg) {
    this->body = body;
    this->arg = arg;
}

Thread::Thread() {
    this->body = omotac;
    this->arg = this;
}

Thread::~Thread() {
    mem_free(myHandle);
}

namespace {
typedef struct struktura {
    void (*body)(void *);
    void *arg;
} struktura;

void wrapper(void *a) {
    auto b = static_cast<struktura *>(a);
    b->body(b->arg);
}
}

int Thread::start() {
    struktura *s = new struktura;
    s->arg=arg;
    s->body=body;
    return thread_create(&myHandle,&wrapper,s);
}

void Thread::join() {
    thread_join(myHandle);
}

void Thread::dispatch() {
    thread_dispatch();
}

int Thread::sleep(time_t t) {
    return time_sleep(t);
}

void Thread::omotac(void* arg) {
    Thread*t = (Thread*)arg;
    t->run();
}

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle,init);
}

Semaphore::~Semaphore() {
    sem_close(myHandle);
}

int Semaphore::wait() {
    return sem_wait(myHandle);
}

int Semaphore::signal() {
    return sem_signal(myHandle);
}

PeriodicThread::PeriodicThread(time_t period): Thread() {
    this->period=period;
}

void PeriodicThread::run() {
    while(flag){
        periodicActivation();
        time_sleep(period);
    }
}

void PeriodicThread::terminate() {
    flag=false;
}

char Console::getc() {
    return ::getc();
}

void Console::putc(char c) {
    ::putc(c);
}
