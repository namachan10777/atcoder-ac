import std.stdio;

void main() {
	int n, q;
	scanf("%d %d\n", &n, &q);
	auto c1 = 'X';
	int cnt = 0;
	int[] cache = [];
	auto s = readln;
	foreach (c; s) {
		if (c1 == 'A' && c == 'C') {
			++cnt;
		}
		c1 = c;
		cache ~= cnt;
	}
	foreach(_;0..q) {
		int l, r;
		scanf("%d %d", &l, &r);
		writeln(cache[r-1] - cache[l-1]);
	}
}
