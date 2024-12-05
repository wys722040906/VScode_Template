cmake_minimum_required(VERSION 3.10)
project(MyProject VERSION 1.0)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)
include_directories(${PROJECT_SOURCE_DIR}/include)

file(GLOB_RECURSE SOURCE_FILES src/*.cpp)

# 添加可执行文件
add_executable(MyProject ${SOURCE_FILES})

# 如果有第三方库，可以使用以下方式链接库
# target_link_libraries(MyProject <library_name>)
