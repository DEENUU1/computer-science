#include <iostream>

template<typename T>
struct Node {
    T data;
    Node* next;
};

template<typename T>
void insertFront(Node<T>*& head, const T& value) {
    // insert value at the beginning
    auto const node = new Node<T>;

    node->data = value;
    node->next = head;
    head = node;
}

template<typename T>
void insertEnd(Node<T>*& head, const T& value) {
    // insert value at the end
    auto const node = new Node<T>;

    node->data = value;
    node->next = nullptr;

    if (head == nullptr) {
        head = node;
        return;
    }

    Node<T>* last = head;
    while (last->next != nullptr) {
        last = last->next;
    }

    last->next = node;
}

template<typename T>
void insertIdx(Node<T>*& head, int position, const T& value) {
    // insert value by position (index)
    //
    // index can't be smaller than 0
    if (position < 0) {
        throw std::runtime_error("Index can't be lower than 0");
    }
    if (position == 0) {
        insertFront(head, value);
        return;
    }

    auto const node = new Node<T>;
    node->data = value;
    node->next = nullptr;

    Node<T>* current = head;
    Node<T>* previous = nullptr;
    for (int i = 0; current != nullptr && i < position; i++) {
        previous = current;
        current = current->next;
    }

    if (current == nullptr) {
        return;
    }

    previous->next = node;
    node->next = current;
}

template<typename T>
void removeFront(Node<T>*& head) {
    // remove first value from the left
    if (head == nullptr) {
        return;
    }

    auto const tmp = head;
    head = head->next;
    delete tmp;
}

template<typename T>
void removeEnd(Node<T>*& head) {
    // remove first value from the right
    if (head == nullptr) {
        return;
    }
    if (head->next == nullptr) {
        delete head;
        head = nullptr;
        return;
    }

    Node<T>* before_last = nullptr;
    Node<T>* last = head;
    while (last->next != nullptr) {
        before_last = last;
        last = last->next;
    }

    before_last->next = nullptr;
    delete last;
}

template<typename T>
void removeIdx(Node<T>*& head, int position) {
    // remove value by position (index)
    //
    // index can't be smaller than 0
    if (head == nullptr) {
        return;
    }
    if (position < 0) {
        throw std::runtime_error("Index can't be lower than 0");
    }
    if (position == 0) {
        auto const tmp = head;
        head = head->next;
        delete tmp;
        return;
    }

    Node<T>* current = head;
    Node<T>* previous = nullptr;
    for (int i = 0; current != nullptr && i < position; i++) {
        previous = current;
        current = current->next;
    }

    if (current == nullptr) {
        return;
    }
    previous->next = current->next;
    delete current;
}

template<typename T>
void print(const Node<T>* head) {
    // display linked list in console as a string
    std::cout << "\n";
    while (head != nullptr) {
        std::cout << head->data << " ";
        head = head->next;
    }
}

int main() {
    Node<int>* head = nullptr;
    // dodaj na początek
    insertFront(head, 3);
    insertFront(head, 2);
    insertFront(head, 1);
    // dodaj na koniec
    insertEnd(head, 4);
    insertEnd(head, 5);
    insertEnd(head, 6);
    // print
    print(head);
    // usuń z początku
    removeFront(head);
    removeFront(head);
    // print
    print(head);
    // usuń z końca
    removeEnd(head);
    removeEnd(head);
    // print
    print(head);
    // dodaj po indeksie
    insertIdx(head, 1, 7);
    insertIdx(head, 0, -1);
    // print
    print(head);
    // usuń z indeksu
    removeIdx(head, 2);
    removeIdx(head, 0);
    // print
    print(head);

    return 0;
}

// WYNIK
//
/*
1 2 3 4 5 6
3 4 5 6
3 4
-1 3 7 4
3 4
*/
