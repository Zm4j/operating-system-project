
#ifndef _syscall_cpp
#define _syscall_cpp

#include "syscall_c.h"
#include "../h/print.h"
void* operator new (size_t);
void operator delete (void*);

class Thread {
public:
    Thread (void (*body)(void*), void* arg);
    virtual ~Thread ();
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
private:
    static void omotac(void*);
    thread_t myHandle;
};
class Semaphore {
public:
    Semaphore (unsigned init = 1);
    virtual ~Semaphore ();
    int wait ();
    int signal ();
private:
    sem_t myHandle;
};
class PeriodicThread : public Thread {
protected:
    virtual void periodicActivation () {}
    PeriodicThread (time_t period) ;
private:
    bool flag=true;
    void run() override;
    time_t period;
public:
    void zaustavi();
};
class Console {
public:
    static char getc ();
    static void putc (char);
};
#endif
