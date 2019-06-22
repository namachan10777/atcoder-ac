import std.stdio;
import std.string;
import std.conv;
import std.algorithm;
import std.typecons;

alias T = Tuple!(long, long, long);
long[] vs;
long[T] memo;
long n, k;

long f(long l, long r, long m) {
	auto key = tuple(l, r, m);
	if (key in memo) return memo[key];
	if (m < 0 || n-r-1 < l) return 0;
	long[] cands = [0];
	cands ~= vs[l]     + f(l+1, r  , m-1);
	cands ~= vs[$-r-1] + f(l  , r+1, m-1);
	if (m > 1) {
		cands ~= f(l+1, r  , m-2);
		cands ~= f(l  , r+1, m-2);
	}
	memo[key] = cands.reduce!max;
	return memo[key];
}

void main() {
	scanf("%ld %ld\n", &n, &k);
	vs = readln.chomp.split.to!(long[]);
	f(0, 0, k-1).write;
}
