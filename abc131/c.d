import std.stdio;
import std.conv;
import std.numeric;

long f(long n, long c, long d) {
	return n - (n / c) - (n / d) + (n / (c * d / gcd(c, d)));
}

void main() {
	long a, b, c, d;
	scanf("%ld %ld %ld %ld", &a, &b, &c, &d);
	write(f(b, c, d) - f(a-1, c, d));
}
