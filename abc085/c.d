import std.stdio;
import std.string;
import std.conv;

void main() {
	long n, y;
	scanf("%ld %ld", &n, &y);
	y /= 1000;
	foreach(i; 0..n+1) {
		foreach(j; 0..(n+1-i)) {
			if (i*10+j*5+(n-i-j) == y) {
				writef("%s %s %s", i, j, n-i-j);
				return;
			}
		}
	}
	write("-1 -1 -1");
}
