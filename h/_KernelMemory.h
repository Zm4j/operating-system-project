//
// Created by os on 8/4/22.
//
#include "../lib/hw.h"
#include "../lib/console.h"

#ifndef PROJECT_BASE_V1_1_MEMORIJA_H
#define PROJECT_BASE_V1_1_MEMORIJA_H

using namespace std;

class Memorija {
public:
    static int oslobadjanje(void* add);
    static void* alokacija(size_t size);

    static void print();
private:

    static void CreateMemorija() {
        if (head == nullptr) {
            head = (struktura * )(HEAP_START_ADDR);
            head->next = nullptr;
            head->prev = nullptr;
            head->size = (char *) HEAP_START_ADDR - (char *) HEAP_END_ADDR - sizeof(struktura);
        }
    }

    struct struktura{
        struktura* next;
        struktura* prev;
        size_t size;
    };

    static struktura* head;
};

#endif //PROJECT_BASE_V1_1_MEMORIJA_H
