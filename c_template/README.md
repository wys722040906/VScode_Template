# 现代cmake

## 常见构建指令

```
cmake -S . (构建源码目录  CMakeList目录) 
	-B build （编译目录 build目录）
	-G Ninja |" Unix Makefiles" (构建生成器)
	-DCMAKE_C_COMPILER=clang -DCMAKE_CXX_COMPILER=clang++（编译器）
	-DCMAKE_BUILD_TYPE= Release(优化)|RelWithDebInfo（优化调试）|Debug（调试）
	-DCMAKE_INSTALL_PREFIX=(UNIX 系统默认的位置是 /usr/local，用户目录是 ~/.local)
	-DBUILD_SHARED_LIBS= ON|OFF (生成STATIC|SHARED库)
	-DBUILD_TESTING= ON|OFF(是否构建测试目标)
	--trace-source="CMakeLists.txt"(追踪特定cmakelist)
	--trace(追踪所有)
	--trace-expand(展开所有变量)
	--debug-output（输出调试信息）
	--warn-uninitialized（未初始化的变量发布警告）
```

```
cmake --build .(指定编译链接目录)
 	-- -j8 （-- 后面跟着的选项（在本例中是 -j8）会被传递给底层的构建工具（例如 Make））
	--target install(安装)
```

```
ninja clean | make clean
```



# 古代cmake

```
mkdir -p build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j4
make install //下软件+依赖
cd ..
```

# 快捷键

- **ctrl+shift+b:快速编译**
- **ctrl+f5:运行**
