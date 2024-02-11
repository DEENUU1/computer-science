#include <cstdlib>
#include <iostream>
using namespace std;


struct Node {
    int data;
    struct Node* next;
};

void insertFront(struct Node** head_ref, int value) {
    struct Node* new_node = (struct Node*)malloc(sizeof(struct Node));

    new_node->data = value;
    new_node->next = (*head_ref);

    (*head_ref) = new_node;
}

// dodawanie na koniec
void insertEnd(struct Node** head_ref, int value) {
    struct Node* new_node = (struct Node*)malloc(sizeof(struct Node));
    struct Node* last = *head_ref;

    new_node->data = value;
    new_node->next = nullptr;

    if (*head_ref == nullptr) {
        *head_ref = new_node;
        return;
    }

    while (last->next != nullptr) {
        last = last->next;
    }

    last->next = new_node;
    return;
}


// print
void print(struct Node* node) {
    while (node != nullptr) {
        cout << node->data << " ";
        node = node-> next;
    }
}

// dodawanie elementu w miejsce podane jako argument funkcji
// usuwanie elementu z początku
// usuwanie elementu z końca
// usuwanie elemntu z podanego miejsca


// main
int main() {
    struct Node* head = nullptr;

    // na początek dodaj 3, 2, 1
    insertFront(&head, 3);
    insertFront(&head, 2);
    insertFront(&head, 1);
    // na koniec dodaj 4, 5, 6
    insertEnd(&head, 4);
    insertEnd(&head, 5);
    insertEnd(&head,6);
    // print
    print(head);
}


// usun 2 elementy z początku listy
// print
// usun 2 elementy z konca listy
// print
// dodaj liczbe 7 na pozycje 1 | dodaj liczbę -1 na pozycję 0
// print
// usuń element z pozycji 2 i 0
// print
