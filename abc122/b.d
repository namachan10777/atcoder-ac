import std.stdio;

void main() {
	int cnt, max;
	foreach(c;readln) {
		if (c == 'A' || c == 'C' || c == 'T' || c == 'G') {
			++cnt;
			if (cnt > max) max = cnt;
		}
		else {
			cnt = 0;
		}
	}
	max.write;
}
