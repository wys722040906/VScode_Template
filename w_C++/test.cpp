#include <iostream>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <chrono>
#include <thread>
inline void c_reser(uint8_t *c){ *c >=0xff ? 0 : c;}
int main(){
    for(uint8_t c =0; ; c+=0x11){
        std::cout << std::hex << c << std::endl;
        std::this_thread::sleep_for(std::chrono::milliseconds(500));
        c_reser(&c);
    }
    return 0;
}
