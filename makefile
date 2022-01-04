CXX = g++ #编译工具
SOURCES = *.cpp #资源文件
OBJECTS = $(SOURCES:.cpp=.o)#目标文件 
TARGET = app #可执行文件 
LIBS += -lglog -lpthread #glog库
$(TARGET):$(OBJECTS)  
	$(CXX) -o $(TARGET) $(OBJECTS) $(LIBS) 
$(OBJECTS):$(SOURCES)  
	$(CXX) -c $(SOURCES) $(INCLUDE) 
 
# 编译规则 $@代表目标文件 $< 代表第一个依赖文件  
%.o:%.cpp  
	$(CXX) -o $@ -c $<  
#清除编译过程中产生的文件
clean:  
	$(RM) $(OBJECTS) $(TARGET) 