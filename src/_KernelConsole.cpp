//
// Created by os on 9/14/22.
//

#include "../h/_KernelConsole.h"

Bafer* Konzola::baferizlaz = nullptr;
Bafer* Konzola::baferulaz = nullptr;

int Konzola::kapacitet=1024;

void Konzola::putulaz(int val) {
    if(baferulaz==nullptr) {
        baferulaz=(Bafer*) Memorija::alokacija(kapacitet*sizeof(Bafer));
        *baferulaz=Bafer(kapacitet);
    }
    baferulaz->put(val);
}

int Konzola::getulaz() {
    if(baferulaz==nullptr) {
        baferulaz=(Bafer*) Memorija::alokacija(kapacitet*sizeof(Bafer));
        *baferulaz=Bafer(kapacitet);
    }
    return baferulaz->get();
}

void Konzola::putizlaz(int val) {
    if(baferizlaz==nullptr) {
        baferizlaz=(Bafer*) Memorija::alokacija(kapacitet*sizeof(Bafer));
        *baferizlaz=Bafer(kapacitet);
    }
    baferizlaz->put(val);
}

int Konzola::getizlaz() {
    if(baferizlaz==nullptr) {
        baferizlaz=(Bafer*) Memorija::alokacija(kapacitet*sizeof(Bafer));
        *baferizlaz=Bafer(kapacitet);
    }
    return baferizlaz->get();
}

int Konzola::getcntbi() {
    return baferizlaz->getCnt();
}

int Konzola::getcntbu() {
    return baferulaz->getCnt();
}
