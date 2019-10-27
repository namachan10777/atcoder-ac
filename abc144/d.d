import std.stdio;
import std.math;
import std.algorithm;

void main() {
	double a, b, x;
	scanf("%lf %lf %lf", &a, &b, &x);
	auto s = b - x / a / a;
	if (s < b/2) {
		writef("%.20f", 90.0 - 180.0 / PI * atan(a/2/s));
	}
	else {
		writef("%.20f", 90.0 - 180.0 / PI * atan(x / b / a * 2 / b));
	}
}
