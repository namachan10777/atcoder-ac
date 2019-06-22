import std.stdio;
import std.algorithm;
import std.string;
import std.conv;

void main() {
	int n, x;
	scanf("%d %d\n", &n, &x);
	auto ls = readln.chomp.split.to!(int[]);
	int d, cnt;
	foreach(l; ls) {
		d += l;
		++cnt;
		if (d > x) {
			cnt.write;
			return;
		}
	}
	write(n+1);
}
