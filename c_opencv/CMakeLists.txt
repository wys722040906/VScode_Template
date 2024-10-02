# CMake最低版本要求
cmake_minimum_required(VERSION 3.10)

# 设置项目名称和版本
project(MyProject VERSION 1.0)

# 设置C++标准
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Set the path to your OpenCV 4.10 installation
set(OpenCV_DIR "/opt/opencv-4.10/lib/cmake/opencv4")
find_package(OpenCV REQUIRED)
# 设置包含目录
include_directories(${OpenCV_INCLUDE_DIRS})
if(OpenCV_FOUND)
    message(STATUS "OpenCV found!")
    message(STATUS "OpenCV version: ${OpenCV_VERSION}")
    message(STATUS "OpenCV include path: ${OpenCV_INCLUDE_DIRS}")
    message(STATUS "OpenCV libraries: ${OpenCV_LIBS}")
else()
    message(FATAL_ERROR "OpenCV not found!")
endif()

# 添加包含目录（可选）
# include_directories(${PROJECT_SOURCE_DIR}/src)
include_directories(${PROJECT_SOURCE_DIR}/include)

# 查找src目录下所有.cpp文件，并将名称保存到变量SOURCE_FILES中
file(GLOB_RECURSE SOURCE_FILES src/*.cpp)

# 添加可执行文件
add_executable(MyProject ${SOURCE_FILES})

# 如果有第三方库，可以使用以下方式链接库
target_link_libraries(MyProject ${OpenCV_LIBS})
