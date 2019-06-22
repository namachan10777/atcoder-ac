import std.stdio;
import std.algorithm;
import std.string;
import std.conv;

void main() {
	long n, k;
	scanf("%ld %ld\n", &n, &k);
	auto as = readln.chomp.split.to!(long[]);
	auto lad = new long[n+1];
	lad[0] = 0;
	foreach(i; 0..n) {
		lad[i+1] = lad[i] + as[i];
	}
	long e;
}
