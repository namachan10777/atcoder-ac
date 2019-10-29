import std.stdio;
import std.string;
import std.conv;
import std.algorithm;

void main() {
	long n, k;
	scanf("%ld %ld\n", &n, &k);
	auto as = readln.chomp.split.to!(long[]);
	auto fs = readln.chomp.split.to!(long[]);
	as.sort!"a<b";
	fs.sort!"a>b";

	long left = -1;
	long right = 10L^^12;

	while(right - left > 1) {
		long mid = left + (right - left) / 2;

		long k_ = k;
		foreach(i; 0..n) {
			k_ -= max(0, (as[i]*fs[i] - mid + fs[i] - 1) / fs[i]);
			if (k_ < 0) break;
		}

		if (k_ >= 0) right = mid;
		else left = mid;
	}
	right.write;
}
