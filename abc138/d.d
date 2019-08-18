import std.string;
import std.stdio;
import std.conv;
import std.algorithm;
import std.typecons;

void main() {
	int n, q;
	int[][int] map;
	scanf("%d %d\n", &n, &q);
	int[] cnts, checks;
	cnts = new int[n+1];
	checks = new int[n+1];
	foreach(i;0..n-1) {
		int a, b;
		scanf("%d %d\n", &a, &b);
		map[a] ~= b;
	}
	foreach(i;0..q) {
		int p, x;
		scanf("%d %d\n", &p, &x);
		checks[p] += x;
	}
	int[] que = [1];
	for(size_t i; i < que.length; ++i) {
		auto v = que[i];
		cnts[v] += checks[v];
		if (v in map) {
			foreach(child; map[v]) {
				cnts[child] += cnts[v];
				que ~= child;
			}
		}
	}
	foreach (v; cnts[1..$]) {
		write(v, " ");
	}
}
