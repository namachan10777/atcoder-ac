import std.stdio;
import std.conv;
import std.algorithm;
import std.math;


void main() {
	long n;
	scanf("%ld", &n);
	long m = long.max;
	foreach(i; 1..n.to!double.sqrt.ceil.to!size_t+2) {
		if (n % i == 0) {
			m = min(i + n/i-2, m);
		}
	}
	m.write;
}
