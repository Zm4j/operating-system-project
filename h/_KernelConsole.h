//
// Created by os on 9/14/22.
//

#ifndef PROJECT_BASE_V1_1_KONZOLA_H
#define PROJECT_BASE_V1_1_KONZOLA_H

#include "_KernelBuffer.h"

class Konzola {
private:
public:
    static Bafer* baferizlaz;
    static Bafer* baferulaz;
    static int kapacitet;

    static int getcntbi();
    static int getcntbu();

    static void putulaz(int val);
    static int getulaz();

    static void putizlaz(int val);
    static int getizlaz();
};


#endif //PROJECT_BASE_V1_1_KONZOLA_H
