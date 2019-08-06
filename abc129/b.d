import std.stdio;
import std.string;
import std.conv;
import std.algorithm;
import std.math;

bool isOk(long[] arr, size_t idx, long key) {
	if (arr[idx] >= key) return true;
	return false;
}

size_t binsearch(long[] arr, long key) {
	long left = -1;
	long right = arr.length;

	while(right - left > 1) {
		long mid = left + (right - left) / 2;
		if (isOk(arr, mid, key)) right = mid;
		else left = mid;
	}
	return right;
}

void main() {
	int n;
	scanf("%d\n", &n);
	auto ws = readln.chomp.split.to!(long[]);
	auto total = ws.reduce!"a+b";
	auto ladder = new long[ws.length];
	ladder[0] = ws[0];
	foreach(i, w;ws[1..$])
		ladder[i+1] = ladder[i] + w;
	auto sep = binsearch(ladder, total/2);
	min(2*ladder[sep]-total, total-2*ladder[sep-1]).write;
}
