//
// Created by os on 8/5/22.
//

#include "../h/memorija.h"
#include "../h/print.h"

Memorija::struktura* Memorija::head = nullptr;

void* Memorija::alokacija(size_t size) {

    CreateMemorija();

    if(size<0) return nullptr;

    size+=sizeof(struktura);

    if(size%MEM_BLOCK_SIZE) size+= MEM_BLOCK_SIZE - size%MEM_BLOCK_SIZE; // ????

    struktura *temp = head;
    while(temp){
        if(temp->size>=size) break;
        temp=temp->next;
    }

    if(temp == nullptr) return nullptr;

    if(temp->size>size) {
        // 10-3-4 -> 5-3-4
        //ako ima ostatka
        //ostavljamo strukturu unutar bloka da nam govori
        //  kolika je velicina bloka koji je rezervisan

        int ostatak = temp->size - size; // ovo je preostao prostor bloka
        temp->size = size;
        struktura *temp2 = (struktura *) ((char *) temp + size);
        temp2->size = ostatak;
        temp2->next = temp->next;
        temp2->prev = temp->prev;
        if (temp->next) temp->next->prev = temp2; // update sledbenika ako ga ima
        if (temp->prev) temp->prev->next = temp2; //update prethodnika ako ga ima
        else head=temp2; //ako nema prethodnika onda je temp2 head
    }
    //ako nema ostatka, treba samo da se spoje
    else{
        // 10-3-4 -> 10-4
        //ako se popuni ceo prostor nekog clana liste
        //struktura koju ostavljamo ostaje nepromenjena
        //  ali je brisemo iz liste slobodnih delova memorije

        if(temp->next) temp->next->prev = temp->prev;
        if(temp->prev) temp->prev->next = temp->next;
        else head=temp->next; //ako se brise prvi clan liste update head
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


    //ako je flag=true to znaci da se oslobadja poslednji blok
    //  temp pokazuje na poslednje slobodno polje liste

    //ako je flag=false to znaci da se oslobadja ne poslednji blok
    //  temp pokazuje na prvo polje ispod onog koje se oslobadja

    struktura* novo = (struktura*)((char*)add-sizeof(struktura));
    int size = novo->size;

    if ((char *) add + size - sizeof(struktura) == (char *) temp) { // - sizeof(struktura) jer add pokazuje posle strukture a temp iza strukture

        //treba temp da se utopi u novo i da se doda u listu
        // 3 5 (3) 2 5 -> 3 5 [5] 5
        novo->size+=temp->size;
        novo->next=temp->next;
        if(temp->next) temp->next->prev=novo;
        novo->prev=temp->prev;
        if(temp->prev) temp->prev->next=novo;
        else head=novo;
    }
    else{
        //ne treba da se spoji treba da se doda u listu
        // 3 5 (3) 2 5 -> 3 5 [3] 2 5
        novo->next=temp;
        novo->prev=temp->prev;
        if(temp->prev) temp->prev->next=novo;
        else head=novo;
        temp->prev=novo;
    }

    //sada smo dodali novo u listu slobodnih mesta
    //  i mozda spojili sa slobodnim mestom desno od njega
    //  treba proveriti da li se sada i moze spojiti sa levom stranom

    if(flag==false) temp=novo->prev;
    //temp sada pokazuje na nivo iznad strukture 'novo'
    // 3 4 5 (6) 2; 5->temp, 6->novo

    if (temp && (char *) temp + temp->size == (char *) novo){
        //treba novo da se utopi u temp
        // 3 4 {5} (6) 2 -> 3 4 [11] 2
        temp->size+=novo->size;
        temp->next=novo->next;
        if(novo->next) novo->next->prev=temp;
    }

    return 0;
}

void Memorija::Print() {
    CreateMemorija();
    for(struktura *blk = head; blk!=nullptr; blk=blk->next){
        print(blk->size);
    }
}