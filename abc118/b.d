import std.stdio;
import std.string;
import std.conv;
import std.algorithm;
import std.range;

void main() {
	int n, m;
	scanf("%d %d\n", &n, &m);
	auto r = new int[m];
	foreach(i;0..n) {
		auto input = readln.chomp.split(" ").to!(int[]);
		foreach(a;input[1..$])
			++r[a-1];
	}
	size_t c;
	foreach(a; r)
		if (a == n)
			++c;
	c.write;
}
