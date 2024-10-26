#include <iostream>
#include <staticLib/sub.h>
#include <sharedLib/add.h>

int main() {
    std::cout << "Hello, World!" << std::endl;
    std::cout << "The sum of 1 and 3 is: " << sub(1,3) << std::endl;
    std::cout << "The sum of 2 and 4 is: " << add(2,4) << std::endl;
    return 0;
}   