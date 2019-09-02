import std.stdio;
import std.string;
import std.algorithm;
import std.conv;
import std.typecons;
import std.range;
import std.container;

void main() {
	int n, day=1, cnt;
	scanf("%d\n", &n);
	int[][] as = new int[][n];
	int[] ds = new int[n];
	foreach(i; 0..n) {
		as[i] = readln.chomp.split.map!(a => a.to!int - 1).array;
	}
	auto q = DList!(Tuple!(int, int)).init;
	foreach(i, line; as) {
		q.insertBack(tuple(i.to!int, line[0]));
	}
	q.insertBack(tuple(-1, -1));
	for(;;) {
		auto x = q.front[0];
		auto y = q.front[1];
		q.removeFront;
		if (x < 0 && y < 0) {
			if (q.empty) break;
			++day;
			q.insertBack(tuple(-1, -1));
			continue;
		}
		if (as[x].empty || as[y].empty || as[x].front != y || as[y].front != x) continue;
		if (ds[x] == day || ds[y] == day) {
			q.insertBack(tuple(x, y));
			continue;
		}
		as[x].popFront;
		as[y].popFront;
		if (!as[x].empty) q.insertBack(tuple(x, as[x].front));
		if (!as[y].empty) q.insertBack(tuple(y, as[y].front));
		ds[x] = day;
		ds[y] = day;
		++cnt;
	}
	if (cnt == n*(n-1)/2) {
		day.write;
	}
	else {
		write(-1);
	}
}
