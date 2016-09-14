INCLUDE=-I/Library/Java/JavaVirtualMachines/jdk1.8.0_40.jdk/Contents/Home/include \
-I/Library/Java/JavaVirtualMachines/jdk1.8.0_40.jdk/Contents/Home/include/darwin/ 
TARGET=example.so
CC=gcc
CPPFLAG=-shared -WI 
LDLIB=
OBJS=example.o example_wrap.o

$(TARGET) : $(OBJS)  
	$(CC) $(CPPFLAG) $(INCLUDE) -o $(TARGET) $(OBJS) $(LDLIB)  
$(OBJS) : %.o : %.c 
	$(CC) -c -fPIC $(INCLUDE) $< -o $@  
clean:  
	rm -f $(OBJS) 