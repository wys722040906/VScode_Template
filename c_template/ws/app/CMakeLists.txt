project(app)
cmake_minimum_required(VERSION 3.10)
set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 11)  

#实用之前先把staticLib和sharedLib编译好，并安装到指定目录
set(CMAKE_PREFIX_PATH "${CMAKE_SOURCE_DIR}/install")  # 设置搜索路径
find_package(staticLib REQUIRED)
find_package(sharedLib REQUIRED)

add_executable(${PROJECT_NAME} ${CMAKE_CURRENT_SOURCE_DIR}/src/main.cpp)

target_link_libraries(${PROJECT_NAME} PUBLIC 
    staticLib
    sharedLib
)

target_include_directories(${PROJECT_NAME} PUBLIC 
    ${CMAKE_CURRENT_SOURCE_DIR}/include
    ${staticLib_INCLUDE_DIRS}
    ${sharedLib_INCLUDE_DIRS}
)

