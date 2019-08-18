import std.stdio;
import std.string;
import std.algorithm;
import std.conv;

void main() {
	int n;
	scanf("%d\n", &n);
	auto a = readln.chomp.split.to!(double[]);
	writef("%.20f", 1.0 / a.map!(x => 1.0 / x).reduce!"a+b");
}
