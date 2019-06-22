import std.stdio;
import std.algorithm;
import std.conv;
import std.typecons;

void main() {
	int n;
	scanf("%d", &n);
	auto ipt = new Tuple!(int, int)[n];
	foreach(i;0..n) {
		int a, b;
		scanf("%d %d", &a, &b);
		ipt[i] = tuple(a, b);
	}
	ipt.sort!((a, b) => a[1] < b[1]);
	int t;
	foreach(x; ipt){
		t += x[0];
		if (t > x[1]) {
			write("No");
			return;
		}
	}
	write("Yes");
}
