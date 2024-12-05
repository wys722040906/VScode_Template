/*
使用前终端输入
sudo apt update
sudo apt install build-essential
sudo apt install gdb
sudo apt install cmake

检查
gcc --version
g++ --version
make --version
*/

#include "stdio.h"
int main(){
    int a,b;
    scanf("%d %d",&a, &b);
    int c = a+b;
    printf("maxNum:", a > b ? a:b);
    printf("minNum:", a > b ? b:a);
    return 0;
}