#include <iostream>
#include <vector>
#include <algorithm>
#include <random>


std::vector<int> generateNumbers(int rangeFrom, int rangeTo) {
    std::vector<int> numbers(rangeTo - rangeFrom + 1);
    std::iota(numbers.begin(), numbers.end(), rangeFrom);
    return numbers;
}


std::vector<int> generateRandomNumbers(int size, int rangeFrom, int rangeTo) {
    std::vector<int> numbers = generateNumbers(rangeFrom, rangeTo);

    std::random_device rd;
    std::mt19937 g(rd());
    std::ranges::shuffle(numbers.begin(), numbers.end(), g);

    return {numbers.begin(), numbers.begin() + size};
}


bool numExists(const std::vector<int>& arr, int target) {
    return std::ranges::find(arr.begin(), arr.end(), target) != arr.end();
}


int main() {
    const int size{6};
    const int rangeFrom{1};
    const int rangeTo{49};
    int userTotal{0};
    int userScore{0};
    int userGuess{0};
    std::vector<int> userGuesses;
    std::vector<int> randomNumbers = generateRandomNumbers(size, rangeFrom, rangeTo);

    while (userTotal < size) {
        std::cout << "Podaj liczbe od 1 do 49: ";
        std::cin >> userGuess;

        if (!numExists(userGuesses, userGuess)) {
            userGuesses.push_back(userGuess);
            userTotal++;
        } else {
            std::cout << "Nie mozesz podac tej samej liczby 2 razy";
        }

        std::cout << "\n";
    }

    for (int i: userGuesses) {
        if (numExists(randomNumbers, i)) {
            userScore++;
        }
    }

    std::cout << "Twoj wynik to: " << userScore << "/" << size << "\n";
    std::cout << "Wygrywajace liczby to: ";

    for (int i: randomNumbers) {
        std::cout << i << " ";
    }

    return 0;
}
