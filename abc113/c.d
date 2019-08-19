import std.stdio;
import std.string;
import std.algorithm;
import std.conv;
import std.typecons;

void main() {
	int n, m;
	scanf("%d %d\n", &n, &m);
	Tuple!(int, int)[][int] map;
	foreach (i; 0..m) {
		int p, y;
		scanf("%d %d\n", &p, &y);
		map[p] ~= tuple(i, y);
	}
	Tuple!(int, int, int)[] flat;
	foreach (p; map.keys) {
		auto cities = map[p];
		cities.sort!((a, b) => a[1] < b[1]);
		int cnt;
		foreach (city; cities) {
			++cnt;
			flat ~= tuple(city[0], p, cnt);
		}
	}
	flat.sort!((a, b) => a[0] < b[0]);
	foreach (city; flat) {
		writefln("%06d%06d", city[1], city[2]);
	}
}
