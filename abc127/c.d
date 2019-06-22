import std.stdio;

void main() {
	int n, m;
	scanf("%d %d\n", &n, &m);
	auto add = new int[n];
	auto sub = new int[n];
	foreach (i; 0..m) {
		int l, r;
		scanf("%d %d\n", &l, &r);
		++add[l-1];
		++sub[r-1];
	}
	int y, cnt;
	foreach(i; 0..n) {
		y += add[i];
		if (y == m) ++cnt;
		y -= sub[i];
	}
	cnt.write;
}
