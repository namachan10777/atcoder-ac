import std.stdio;
import std.algorithm;
import std.string;
import std.conv;
import std.range;

struct SP { string s; int p, n; }

void main() {
	int n;
	scanf("%d\n", &n);
	SP[][string] dic;
	foreach(i;0..n) {
		auto x = readln.chomp.split.array;
		dic[x[0]] ~= SP(x[0], x[1].to!int, i);
	}
	auto keys=dic.keys;
	keys.sort!"a<b";
	foreach(key; keys) {
		auto r = dic[key];
		r.sort!((a, b) => a.p > b.p);
		foreach(x; r) {
			writeln(x.n+1);
		}
	}
}
