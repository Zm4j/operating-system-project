//
// Created by os on 9/14/22.
//

#ifndef PROJECT_BASE_V1_1_BAFER_H
#define PROJECT_BASE_V1_1_BAFER_H

#include "_KernelSemaphore.h"

class Bafer {
private:
    int cap;
    int cnt=0;
    int *buffer;
    int head, tail;

    Semafor* spaceAvailable;
    Semafor* itemAvailable;
    Semafor* mutexHead;
    Semafor* mutexTail;

public:
    Bafer(int _cap);

    void put(int val);
    int get();

    int getCnt();
};


#endif //PROJECT_BASE_V1_1_BAFER_H
