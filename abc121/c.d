import std.stdio;
import std.typecons;
import std.algorithm;

void main() {
	long n, m;
	scanf("%ld %ld", &n, &m);
	Tuple!(long, long)[] ss;
	foreach(i;0..n) {
		long a, b;
		scanf("%ld %ld", &a, &b);
		ss ~= tuple(a, b);
	}
	ss.sort!((a, b) => a[0] < b[0]);
	long p;
	foreach(s; ss) {
		if (m <= 0) break;
		p += s[0] * min(m, s[1]);
		m -= s[1];
	}
	write(p);
}
