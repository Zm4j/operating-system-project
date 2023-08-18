#include "../h/syscall_cpp.h"
#include "../h/print.h"

void* operator new(size_t h){
    return mem_alloc(h);
}

void operator delete(void* x){
    mem_free(x);
}
/////////////////////////////////////////////////////////////////////////
Thread::Thread(void (*body)(void *), void *arg) {
    thread_create1(&myHandle,body,arg);
}

Thread::~Thread() {
    //thread_exit();
    mem_free(myHandle);
}

int Thread::start() {
    return putScheduler(myHandle);
}

void Thread::dispatch() {
    thread_dispatch();
}

int Thread::sleep(time_t t) {
    return time_sleep(t);
}

Thread::Thread() {
    thread_create1(&myHandle, &omotac,this);
}

void Thread::omotac(void* arg) {
    Thread*t = (Thread*)arg;
    t->run();
}
/////////////////////////////////////////////////////////////////////////
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

void PeriodicThread::zaustavi() {
    flag=false;

}

/////////////////////////////////////////////////////////////////////////
char Console::getc() {
    return ::getc();
}

void Console::putc(char c) {
    ::putc(c);
}
