import std.stdio;
import std.conv;

void main() {
	int n;
	scanf("%d\n", &n);
	double ave;
	int cnt, offset;
	foreach(i;0..n) {
		int id;
		scanf("%d ", &id);
		if (id == 1) {
			int a, b;
			scanf("%d %d\n", &a, &b);
			ave = ave * (cnt.to!double / (cnt+1).to!double) + b / cnt.to!double;
			++cnt;
			offset += b;
		}
		else {

		}
	}
}
