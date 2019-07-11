#include <iostream>
#include <cstdio>
#include <algorithm>
#include <cmath>
#include <vector>

using namespace std;

const double PII = acos(-1);
int R, S, E, n, l[1005], r[1005], h[1005];

struct Point {
    double x, y;

    Point(double _x = 0, double _y = 0): x(_x), y(_y) {}

    double length() {
        return sqrt(x*x + y*y);
    }

    double norm() {
        return x*x + y*y;
    }
};

Point operator + (Point a, Point b) { return Point(a.x + b.x, a.y + b.y); }
Point operator - (Point a, Point b) { return Point(a.x - b.x, a.y - b.y); }
Point operator * (Point a, double k) { return Point(a.x * k, a.y * k); }
Point operator / (Point a, double k) { return Point(a.x / k, a.y / k); }
double operator * (Point a, Point b) { return a.x * b.x + a.y * b.y; }

double getAngle(Point A, Point O, Point B) {
    A = A - O; B = B - O;
    return acos((A * B) / sqrt(A.norm() * B.norm()));
}

double getDistance(Point A, Point B) {
    return (A-B).length();
}

double sqr(double x) {
    return x*x;
}

vector <double> getRoot2(double a, double b, double c) {
    vector <double> result;
    double delta = b*b - 4*a*c;
    if (delta < 0) return result;
    if (delta == 0) {
        result.push_back(-b / 2.0 / a);
        return result;
    }
    result.push_back((-b + sqrt(delta))/2.0/a);
    result.push_back((-b - sqrt(delta))/2.0/a);
    return result;
}

Point getRearRight(Point circle, Point tip) {
    double a = 1;
    double b = -2*circle.x;
    double c = sqr(circle.x) + sqr(tip.y - circle.y) - R*R;
    vector <double> X = getRoot2(a, b, c);
    return Point(max(X[0], X[1]), tip.y);
}

double getAnswer() {
    double result = 0;
    result += l[1] - R - S + E - r[n] - R;
    for (int i = 1; i <= n; ++i) {
        if (h[i] >= R) {
            result += 2*(h[i] - R);
            result += PII * R;
        } else {
            Point tip = Point(l[i], h[i]);
            Point circle = Point(l[i]-R, R);
            Point rearRight = getRearRight(circle, tip);
            result += getDistance(rearRight, tip) * 2;
            circle = circle + Point(getDistance(rearRight, tip), 0);
            double angle = getAngle(circle, tip, Point(tip.x, tip.y + R));
            result += angle * R * 2;
        }
        result += r[i] - l[i];
        if (i < n) {
            result += l[i+1] - r[i] - 2*R;
        }
    }
    return result;
}

int main(int argc, char** argv) {
    //freopen("input.txt", "r", stdin);
	int T, test_case;
	scanf("%d",&T);
	for(test_case = 0; test_case  < T; test_case++)
	{
        scanf("%d%d%d", &R, &S, &E);
        scanf("%d\n", &n);
        for (int i = 1; i <= n; ++i)
            scanf("%d%d%d",&l[i], &r[i], &h[i]);

        printf("Case #%d\n", test_case+1);
        printf("%.9f\n", getAnswer());
	}

	return 0;//Your program should return 0 on normal termination.
}
