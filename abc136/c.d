import std.stdio;
import std.conv;
import std.string;
import std.algorithm;

void main() {
	int n;
	scanf("%d\n", &n);
	auto hs = readln.chomp.split.to!(int[]);
	int m = hs[0];
	foreach(h; hs){
		if (m - h > 1) {
			write("No");
			return;
		}
		m = max(m, h);
	}
	write("Yes");
}
