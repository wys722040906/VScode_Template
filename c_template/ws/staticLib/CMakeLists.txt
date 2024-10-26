project(staticLib)
cmake_minimum_required(VERSION 3.10)

#创建
add_library(${PROJECT_NAME} STATIC src/sub.cpp)


target_include_directories(${PROJECT_NAME} PUBLIC 
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>  #构建时指定头文件路径。
        $<INSTALL_INTERFACE:include>                            #安装时指定头文件路径。
)    

#-------cmake package install------------
# 设置安装路径为工作空间的 install 目录
# set(CMAKE_INSTALL_PREFIX "${CMAKE_SOURCE_DIR}/install") -- 单独构建时使用
# 安装目标
install(TARGETS ${PROJECT_NAME}
        EXPORT ${PROJECT_NAME}Targets
        ARCHIVE DESTINATION lib
        LIBRARY DESTINATION lib
        RUNTIME DESTINATION bin)
install(DIRECTORY include/ DESTINATION include) # 安装头文件

# 安装 CMake 配置文件，供 find_package() 查找
install(EXPORT ${PROJECT_NAME}Targets
        FILE ${PROJECT_NAME}Config.cmake
        NAMESPACE ${PROJECT_NAME}::
        DESTINATION lib/cmake/${PROJECT_NAME}
)


