
#include <stdio.h>
//#include <string>

class Test{
public:
	//单行注释
	Test(const char* str){
		snprintf( buff, sizeof(buff), "%s", str );
	}

	/** 多行注释
	  */
	void debug(){
		printf( "%s\n", buff );
	}
private:
	//数字为红色
	char buff[256];
};

int main( int argc, char** argv ){
	(void)argc;
	(void)argv;

	Test* t = new Test("test");
	t->debug();

	return 0;
}