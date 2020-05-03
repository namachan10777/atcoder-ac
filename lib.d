import std;

long lower_bound(alias F)(size_t len) {
	long left = -1;
	long right = len;
	while (right - left > 1) {
		long mid = left + (right - left) / 2;
		bool succ = F(mid);
		if (succ) right = mid;
		else left = mid;
	}
	return right;
}

long upper_bound(alias F)(size_t len) {
	return lower_bound!(idx => !F(idx))(len);
}

void main() {
	auto arr = 10.iota;
	assert(lower_bound!(idx => arr[idx] > 4)(arr.length) == 5);
	assert(lower_bound!(idx => arr[idx] > -1)(arr.length) == 0);
	assert(upper_bound!(idx => arr[idx] < 4)(arr.length) == 4);
	assert(upper_bound!(idx => arr[idx] < 10)(arr.length) == 10);
}
