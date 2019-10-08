#include <iostream>
#include <string>
using namespace std;

int main() {
	string cachDoc[10] = { "khong", "mot", "hai", "ba", "bon", "nam", "sau", "bay", "tam", "chin" };
	int n, soChuSo;
	cin >> n;

        if (n >= 100) soChuSo = 3;
        else if (n >= 10) soChuSo = 2;
        else soChuSo = 1;

	if (n >= 100) {
		cout << cachDoc[n / 100] << " tram ";
		n %= 100;
	}
	if (n >= 10) {
		cout << cachDoc[n / 10] << " muoi ";
		n %= 10;
	} else if (n > 0 && soChuSo == 3) {
                cout << " le ";
	}
        if (n > 0)
            cout << cachDoc[n % 10] << endl;
	return 0;
}
