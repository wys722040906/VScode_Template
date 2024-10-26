project(staticLib)
cmake_minimum_required(VERSION 3.10)

#创建
add_library(staticLib STATIC src/sub.cpp)


target_include_directories(staticLib PUBLIC 
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>  #构建时指定头文件路径。
        $<INSTALL_INTERFACE:include>                            #安装时指定头文件路径。
)    

#-------cmake package install------------
# 设置安装路径为工作空间的 install 目录
# set(CMAKE_INSTALL_PREFIX "${CMAKE_SOURCE_DIR}/install") -- 单独构建时使用
# 安装目标
install(TARGETS staticLib
        EXPORT staticLibTargets
        ARCHIVE DESTINATION lib
        LIBRARY DESTINATION lib
        RUNTIME DESTINATION bin)
install(DIRECTORY include/ DESTINATION include) # 安装头文件

# 安装 CMake 配置文件，供 find_package() 查找
install(EXPORT staticLibTargets
        FILE staticLibConfig.cmake
        NAMESPACE staticLib::
        DESTINATION lib/cmake/staticLib)


