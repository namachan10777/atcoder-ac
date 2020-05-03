import std;

long upper_bound(alias F)(size_t len) {
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

void main(){ 
	long x;
	scanf("%ld", &x);
	foreach(a;0L..6200L) {
		long a5 = pow(a, 5L);
		long bp = upper_bound!(idx => a5 - pow(idx, 5L) <= x)(6200L);
		if (a5 - pow(bp, 5L) == x) {
			writefln("%d %d", a, bp);
			return;
		}
		long bm = upper_bound!(idx => a5 + pow(idx, 5L) >= x)(6200L);
		if (a5 + pow(bm, 5L) == x) {
			writefln("%d %d", a, -bm);
			return;
		}
	}
}
