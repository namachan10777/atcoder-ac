import std.stdio;
import std.math;
import std.conv;

void main(){
	long n;
	scanf("%ld", &n);
	auto kmax = sqrt(n.to!double).ceil.to!long;
	long total;
	for (size_t k=1; k < kmax; ++k) {
		if (n % k == 0) {
			total += n / k - 1;
		}
		if (n % k == n / k) total += k;
	}
	total.write;
}
