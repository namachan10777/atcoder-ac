import std.stdio;
import std.algorithm;
import std.string;
import std.conv;
import std.range;

int cnt(int x) {
	x = x - ((x >>> 1) & 0x55555555);
  	x = (x & 0x33333333) + ((x >>> 2) & 0x33333333);
  	x = (x + (x >>> 4)) & 0x0f0f0f0f;
  	x = x + (x >>> 8);
  	x = x + (x >>> 16);
  return x & 0x3f;
}

void main() {
	int m, n;
	scanf("%d %d\n", &n, &m);
	auto bs = new int[m];
	foreach(i; 0..m) {
		auto l = readln.chomp.split.to!(int[]);
		l = l[1..$];
		auto add = 1;
		auto sum = 0;
		foreach(x; l) {
			sum |= add << (x-1);
		}
		bs[i] = sum;
	}
	int r;
	auto p = readln.chomp.split.to!(int[]);
	foreach(x; 0..2^^n) {
		bool acc = true;
		foreach(i; 0..bs.length) {
			acc &= cnt(x & bs[i]) % 2 == p[i];
		}
		if (acc) ++r;
	}
	r.write;
}
