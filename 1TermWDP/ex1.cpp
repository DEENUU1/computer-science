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
void print(const Node<T>* head) {
    // display linked list in console as a string
    std::cout << "\n";
    while (head != nullptr) {
        std::cout << head->data << " ";
        head = head->next;
    }
}

template<typename T>
Node<T>* merge(Node<T>* left, Node<T>* right) {
    Node<T>* result = nullptr;
    if (left == nullptr)
        return right;
    if (right == nullptr)
        return left;

    if (left->data <= right->data) {
        result = left;
        result->next = merge(left->next, right);
    } else {
        result = right;
        result->next = merge(left, right->next);
    }

    return result;
}

template<typename T>
void split(Node<T>* head, Node<T>** front, Node<T>** back) {
    Node<T>* slow = head;
    Node<T>* fast = head->next;

    while (fast != nullptr) {
        fast = fast->next;
        if (fast != nullptr) {
            slow = slow->next;
            fast = fast->next;
        }
    }

    *front = head;
    *back = slow->next;
    slow->next = nullptr;
}

template<typename T>
void mergeSort(Node<T>** headRef) {
    Node<T>* head = *headRef;
    Node<T>* left;
    Node<T>* right;

    if (head == nullptr || head->next == nullptr)
        return;

    split(head, &left, &right);

    mergeSort(&left);
    mergeSort(&right);

    *headRef = merge(left, right);
}

template<typename T>
void removeAll(Node<T>*& head) {
    while (head != nullptr) {
        Node<T>* temp = head;
        head = head->next;
        delete temp;
    }
}


int main() {
    Node<int>* head = nullptr;
    // dodaj na początek
    insertFront(head, 3);
    insertFront(head, 5);
    insertFront(head, 23);
    print(head);
    // usuwanie z początku
    removeFront(head);
    removeFront(head);
    print(head);
    // dodaj na początek
    insertFront(head, 1);
    insertFront(head, 5);
    insertFront(head, 2333);
    insertFront(head, 23);
    insertFront(head, 5512);
    // sort
    mergeSort(&head);
    print(head);
    // usuń wszyskie
    removeAll(head);
    print(head);

    return 0;
}

