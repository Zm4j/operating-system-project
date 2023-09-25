//
// Created by os on 8/5/22.
//

#include "../h/_KernelMemory.h"
#include "../test/printing.hpp"

Memorija::struktura* Memorija::head = nullptr;

void* Memorija::alokacija(size_t size) {

    CreateMemorija();

    size+=sizeof(struktura);
    if(size%MEM_BLOCK_SIZE) size+= MEM_BLOCK_SIZE - size%MEM_BLOCK_SIZE;

    struktura *temp = head;
    while(temp){
        if(temp->size>=size) break;
        temp=temp->next;
    }

    if(temp == nullptr) return nullptr;

    if(temp->size>size) {
        int ostatak = temp->size - size;
        temp->size = size;
        struktura *temp2 = (struktura *) ((char *) temp + size);
        temp2->size = ostatak;
        temp2->next = temp->next;
        temp2->prev = temp->prev;
        if (temp->next) temp->next->prev = temp2;
        if (temp->prev) temp->prev->next = temp2;
        else head=temp2;
    }

    else{
        if(temp->next) temp->next->prev = temp->prev;
        if(temp->prev) temp->prev->next = temp->next;
        else head=temp->next;
    }

    return (char*)temp + sizeof(struktura);
}

int Memorija::oslobadjanje(void *add) {

    if(!add) return -1;
    if(!head) return -2;

    struktura* temp=head;
    bool flag=false;
    while((char*)temp < (char*)add){
        if(temp->next==nullptr){
            flag=true;
            break;
        }
        temp=temp->next;
    }

    struktura* novo = (struktura*)((char*)add-sizeof(struktura));
    int size = novo->size;

    if ((char *) add + size - sizeof(struktura) == (char *) temp) {
        novo->size+=temp->size;
        novo->next=temp->next;
        if(temp->next) temp->next->prev=novo;
        novo->prev=temp->prev;
        if(temp->prev) temp->prev->next=novo;
        else head=novo;
    }
    else{
        novo->next=temp;
        novo->prev=temp->prev;
        if(temp->prev) temp->prev->next=novo;
        else head=novo;
        temp->prev=novo;
    }

    if(!flag) temp=novo->prev;

    if (temp && (char *) temp + temp->size == (char *) novo){
        temp->size+=novo->size;
        temp->next=novo->next;
        if(novo->next) novo->next->prev=temp;
    }

    return 0;
}

void Memorija::print() {
    CreateMemorija();
    for(struktura *blk = head; blk!=nullptr; blk=blk->next){
        printInt(blk->size);
        printString("\n");
    }
}