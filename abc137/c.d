import std.stdio;
import std.string;
import std.conv;
import std.algorithm;

void main() {
	size_t n;
	scanf("%ld\n", &n);
	size_t[ubyte[]] map;
	foreach(i; 0..n) {
		auto l = readln.chomp.representation.dup;
		l.sort!"a<b";
		immutable key = l.dup;
		if (key in map) {
			++map[key];
		}
		else {
			map[key] = 1;
		}
	}
	size_t ans;
	foreach(key; map.keys) {
		ans += map[key] * (map[key] - 1) / 2;
	}
	ans.write;
}
