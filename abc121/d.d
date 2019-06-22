import std.stdio;
import std.math;

long f (long x) {
	long r;
	long d = 1;
	long[] bits	= [];
	foreach(i; 0..63) {
		bits ~= ((x % d + 1) % 2);
		d <<= 1;
	}
	writeln(bits);
	return r;
}

void main() {
	long a, b;
	f(5);
	//scanf("%ld %ld", &a, &b);

}
