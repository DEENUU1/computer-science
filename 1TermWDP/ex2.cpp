#include <iostream>
#include <vector>

template<typename T>
void merge(std::vector<T>& array, int left, int mid, int right) {
    int n1 = mid - left + 1;
    int n2 = right - mid;

    std::vector<T> L(n1);
    std::vector<T> R(n2);

    for (int i = 0; i < n1; ++i)
        L[i] = array[left + i];
    for (int j = 0; j < n2; ++j)
        R[j] = array[mid + 1 + j];

    int i = 0, j = 0, k = left;
    while (i < n1 && j < n2) {
        if (L[i] <= R[j]) {
            array[k] = L[i];
            ++i;
        } else {
            array[k] = R[j];
            ++j;
        }
        ++k;
    }

    while (i < n1) {
        array[k] = L[i];
        ++i;
        ++k;
    }

    while (j < n2) {
        array[k] = R[j];
        ++j;
        ++k;
    }
}

template<typename T>
void mergeSort(std::vector<T>& array, int left, int right) {
    if (left < right) {
        int mid = left + (right - left) / 2;

        mergeSort(array, left, mid);
        mergeSort(array, mid + 1, right);

        merge(array, left, mid, right);
    }
}

int main() {
    std::vector<int> array = {12, 11, 13, 5, 6, 7};

    mergeSort(array, 0, array.size() - 1);

    for (const auto& el : array) {
        std::cout << el << " ";
    }
    std::cout << "\n";

    std::vector<double> arrayTwo = {10.32, 33.23, 4.44, 21.232, 9.3213};
    mergeSort(arrayTwo, 0, arrayTwo.size() - 1);

    for (const auto& el : arrayTwo) {
        std::cout << el << " ";
    }
    std::cout << "\n";

    return 0;
}
