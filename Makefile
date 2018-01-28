
LINK    = @echo linking $@ && g++ #链接用的
GCC     = @echo compiling $@ && g++ #编译c++文件用的
CC      = @echo compiling $@ && gcc #编译c文件用的

#-g表示编译的时候加入调试符号,debug编译: -DDEBUG release: -DNDEBUG
FLAGS   = -g -DDEBUG -Wall -W -fPIC
HEADER  = -I./
LIBS    = 
LINKFLAGS = #-shared

#如果用到库,可以把下面这行打开
#LIBS_PATH = ../libs

#如果有其他的头文件目录,用下面的方式加,也可以用
#HEADER  += -I./otherheader

#HEADER += -I./include \
		   -I./include2

#common全名为libcommon.so
#LIBS    += -L$(LIBS_PATH) -lcommon

BIN_PATH = ../bin/

#每个*.cpp, *.c都对应一个*.o文件,多个源码文件可以直接在下面追加,换行时候用\符号连接多个文件
OBJECT := main.o \
#		  other_src.o \


#如果要编so用下面的两句
#TARGET = libcommon.so
#LINKFLAGS += -shared

#编可执行程序用下面这句
TARGET = main

$(TARGET) : $(OBJECT)
	$(LINK) $(LINKFLAGS) -o $@ $^ $(LIBS)
#	$(LINK) $(FLAGS) $(LINKFLAGS) -o $@ $^ $(LIBS)

#意思是把cpp编译为obj文件
.cpp.o:
	$(GCC) -c $(HEADER) $(FLAGS) -fpermissive -o $@ $<

#意思是把c编译为obj文件
.c.o:
	$(CC) -c $(HEADER) $(FLAGS) -o $@ $<

#如果执行 make install 会把$(TARGET) cp到$(BIN_PATH)下面,cp下面可以跟多行命令
install: $(TARGET)
	cp $(TARGET) $(BIN_PATH)
	#这里可以再跟多行命令,看自己需求

#如果执行 make clean 会清空临时生成的obj,so,可执行程序文件,同样可以跟多行命令
clean:
	- rm -rf *.o *.so $(TARGET)
