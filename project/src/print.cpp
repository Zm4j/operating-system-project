#include "../lib/console.h"
#include "../h/syscall_c.h"
#include "../h/print.h"

void print(char const *string){
    while(*string!='\0'){
        putc(*string);
        string++;
    }
}

void print(int n){
    if(n==0) putc('0');
    if(n<0){
        putc('-');
        n*=-1;
    }
    int cifre[64];
    int i=0;
    for(;n;i++,n=n/10){
        cifre[i]=n%10;
    }
    i--;
    while(i>=0){
        putc('0'+cifre[i--]);
    }

    putc('\n');
}

