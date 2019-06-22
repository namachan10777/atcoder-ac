import std.stdio;
import std.algorithm;
import std.conv;
import std.string;

int f(int n) {
	return n*(n+1)/2;
}

void main() {
	int n, l;
	scanf("%d %d", &n, &l);
	if (l <= 0 && l + n > 0) {
		write(f(l+n-1)-f(-l));
	}
	else if (l > 0) {
		write(f(l+n-1)-f(l));
	}
	else {
		write(-f(-l)+f(-l-n+1));
	}
}
