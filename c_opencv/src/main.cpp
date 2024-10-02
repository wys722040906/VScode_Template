#include "iostream"
#include "foo.hpp"
#include "opencv2/opencv.hpp"

using namespace std;
int main(){
    cv::Mat a;
    cv::namedWindow("test");
    a = cv::imread("/home/wys/Pictures/1.jpg");
    cv::imshow("test",a);
    foo();
    cout << "haha" << endl;
    return 0;
}