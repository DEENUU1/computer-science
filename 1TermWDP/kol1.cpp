#include <iostream>
using namespace std;


// Zadanie 1
void tree(int height, int elements) {

    for(int i = height; i <= elements + 1; i++){
        for(int j = 1; j <= i; j++){
            for(int k = 0; k < (elements - j + 1); k++){
                cout << " ";
            }
            for(int k = 1; k <= j * 2 - 1; k++){
                cout << "*";
            }
            cout << endl;
        }
    }
}


// Zadanie 2
void getSecondLowest(int arr[], int arrSize, int &secondLowest, int &secondLowestIdx) {
    int lowest = INT_MAX;
    secondLowest = INT_MAX;

    for (int i = 0; i < arrSize; i++) {
        if (arr[i] < lowest) {
            secondLowest = lowest;
            secondLowestIdx = i;
            lowest = arr[i];
        } else if (arr[i] < secondLowest && arr[i] != lowest) {
            secondLowest = arr[i];
            secondLowestIdx = i;
        }
    }
}


// zadanie 3
bool isBinaryPalindrome(int n) {
    int binaryNum[32];
    int i = 0;
    // int -> binary
    while (n > 0) {
        binaryNum[i] = n % 2;
        n = n /2;
        i++;
    }
    // check if binary representation of n is palindrome
    for (int j = 0; j < i / 2; j++) {
        if (binaryNum[j] != binaryNum[i - 1 - j]) {
            return false;
        }
    }

    return true;
}



int main() {
    funkcjaThree(10, 20);


    int task = 1;
    
    switch (task) {
        case 1: {
            tree(2,3);
            break;
        }
        case 2: {
            const int arrSize = 10;
            int arr[arrSize] = {6, 9, 0, 2, 3, 5, 1, 9, 7, 1};
            int secondLowest, secondLowestIdx;
            getSecondLowest(arr, arrSize, secondLowest, secondLowestIdx);
            cout << secondLowest << secondLowestIdx << endl;
    
            break;
        }
        case 3: {
            bool res = isBinaryPalindrome(5);
            cout << res; // display true/false
            break;
        }
    
        default:
            cout << "Błędny numer zadania" << endl;
    }

    return 0;
}

