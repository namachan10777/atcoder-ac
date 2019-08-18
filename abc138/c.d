import std.stdio;
import std.algorithm;
import std.conv;
import std.string;

void main() {
	int n;
	scanf("%d\n", &n);
	auto vs = readln.chomp.split.to!(double[]);
	vs.sort!"a<b";
	writef("%0.10f", vs.reduce!((a, b) => (a + b) / 2));
}
