import std.stdio;
import std.math;
import std.conv;

void main() {
	int n_, k_;
	scanf("%d %d", &n_, &k_);
	auto k = k_.to!double;
	auto n = n_.to!double;
	double total = 0.0;
	foreach(i; 0..n_) {
		if (i+1 >= k)
			total += 1.0 / n;
		else {
			auto m = log2(k / (i+1)).ceil.to!long;
			total += 1.0 / pow(2, m) / n;
		}
	}
	writef("%.12f", total);
}

