# CMake最低版本要求
cmake_minimum_required(VERSION 3.10)

# 设置项目名称和版本
project(MyProject VERSION 1.0)

# 设置C++标准
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# 添加包含目录（可选）
# include_directories(${PROJECT_SOURCE_DIR}/src)
include_directories(${PROJECT_SOURCE_DIR}/include)

# 查找src目录下所有.cpp文件，并将名称保存到变量SOURCE_FILES中
file(GLOB_RECURSE SOURCE_FILES src/*.cpp)

# 添加可执行文件
add_executable(MyProject ${SOURCE_FILES})

# 如果有第三方库，可以使用以下方式链接库
# target_link_libraries(MyProject <library_name>)
