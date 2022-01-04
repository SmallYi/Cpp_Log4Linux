# Glog | Linux下的安装和使用方法
1. 什么是glog
    1. glog是google开发的c++环境的日志组件
2. 下载glog
    1. [下载地址](https://github.com/google/glog#getting-started) 已下载最新版glog-0.5.0.tar.gz
3. 安装glog
    1. 解压缩：tar -xzvf glog-0.5.0.tar.gz
    2. 进入根目录：cd glog
    3. CMake配置：cmake -S . -B . -G "Unix Makefiles"
    4. CMake编译：cmake --build .
    5. CMake安装：sudo cmake --build . --target install
4. 加载glog库
    ```text
    # ld.so.cache的更新是递增式的，就像PATH系统环境变量一样
    # 不是从头重新建立，而是向上累加。
    # 只有重新开机，系统才从零开始建立ld.so.cache文件。

    # 向库配置文件中，写入库文件所在目录
    sudo vim /etc/ld.so.conf.d/usr-libs.conf
    添加行：/usr/local/lib  

    # 更新/etc/ld.so.cache文件
    ldconfig
    ```
5. 使用glog
    1. 配置文件：gloghelper.h gloghelper.cpp
    2. 示例程序：main.cpp
    3. 编译程序导入glog库：makefile：LIBS += -lglog -lpthread
    4. 编译示例程序：make
    5. 运行示例程序：./app


