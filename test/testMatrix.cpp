//
// Created by os on 9/25/23.
//

#include "../h/syscall_cpp.h"
#include "printing.hpp"

namespace {
    typedef struct struktura{
        int** matrix;
        int* rez;
        int n;
        int m;
        int id;
    }struktura;
}

void function(void* a){
    struktura *s = static_cast<struktura*>(a);
    s->rez[s->id]=0;
    for(int i=0;i < s->n;i++){
        s->rez[s->id]+= s->matrix[s->id][i];
    }
}

void testMatrixSum(){
    char input[30];
    int n, m;

    printString("Unesite n i m dimenzije matrice:\n");
    getString(input, 30);
    n = stringToInt(input);
    getString(input, 30);
    m = stringToInt(input);

    int** matrix = (int**) mem_alloc(m*sizeof(int*));
    for(int i=0;i<m;i++){
        matrix[i] = (int*) mem_alloc(n*sizeof(int));
        for (int j = 0; j < n; j++) {
            getString(input,30);
            matrix[i][j] = stringToInt(input);
        }
    }

    int* rez = (int*) mem_alloc(m*sizeof(int));

    Thread* thread[m];
    for(int i=0;i<m;i++){
        struktura* s = new struktura;
        s->matrix=matrix;
        s->rez=rez;
        s->m=m;
        s->n=n;
        s->id=i;
        thread[i] = new Thread(&function, (void*)s);
        thread[i]->start();
    }

    for(int i=0;i<m;i++){
        thread[i]->join();
    }
    int sum=0;
    for(int i=0;i<m;i++){
        sum+=rez[i];
    }

    printString("Suma matrice je: ");
    printInt(sum);
    printString("\n");
}