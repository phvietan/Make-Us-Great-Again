#include <fcntl.h>
#include <iostream>
#include <cstring>
#include <cstdlib>
#include <unistd.h>
using namespace std;

class Human{
public:
	void give_shell(){
		system("/bin/sh");
	}
	int age;
	string name;
	virtual void introduce(){
		cout << "My name is " << name << endl;
		cout << "I am " << age << " years old" << endl;
	}
};

class Man: public Human{
public:
	Man(string name, int age){
		this->name = name;
		this->age = age;
        }
        virtual void introduce(){
	          Human::introduce();
            cout << "I am a nice guy!" << endl;
        }
};

class Woman: public Human{
public:
        Woman(string name, int age){
                this->name = name;
                this->age = age;
        }
        virtual void introduce(){
                Human::introduce();
                cout << "I am a cute girl!" << endl;
        }
};

int main(int argc, char* argv[]){
	Human* m = new Man("Jack", 25);
	Human* w = new Woman("Jill", 21);

	printf("%p\n", m);
	printf("%p\n", w);

	printf("%d\n", sizeof(Man));
	printf("%d\n", sizeof(Woman));
	printf("%d\n", sizeof(Human));

	size_t len;
	char* data;
	unsigned int op;
	while(1){
		cout << "1. use\n2. after\n3. free\n";
		cin >> op;

		switch(op){
			case 1:
				//m->introduce();
				printf("%p\n", w);
				for (int i = 0; i < 48; i += 4) {
					printf("%x ", *(w+i));
				}
				puts("");
				w->introduce();
				break;
			case 2:
				len = atoi(argv[1]);
				data = new char[len];
				printf("data: %p\n", data);
				read(open(argv[2], O_RDONLY), data, len);
				cout << "your data is allocated" << endl;
				break;
			case 3:
				delete m;
				delete w;
				break;
			default:
				break;
		}
	}

	return 0;
}
