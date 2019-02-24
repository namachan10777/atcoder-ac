import std.stdio;
import std.math;
import std.algorithm;
import std.conv;

long bisect(T)(T[] arr, T p) {
	long u, t = arr.length-1;
	long i = (u + t) / 2;
	while(i != 0 && i != arr.length - 1 && (arr[i] > p || arr[i+1] <= p)) {
		if (arr[i] > p) {
			t = i;
		}
		else {
			if (u == i)
				u = i + 1;
			else
				u = i;
		}
		i = (t + u) / 2;
	}
	return i;
}
unittest {
	assert(bisect!int([1, 2, 3, 4], 1) == 0);
	assert(bisect!int([1, 2, 3, 4], 2) == 1);
	assert(bisect!int([1, 2, 3, 4], 3) == 2);
	assert(bisect!int([1, 2, 3, 4], 4) == 3);
}

void main() {
	long a, b, q;
	long[] s, t, x;
	scanf("%ld %ld %ld", &a, &b, &q);
	foreach (i;0..a+b+q) {
		long y;
		scanf("%ld", &y);
		if (i < a) {
			s ~= y;
		}
		else if (i < a + b) {
			t ~= y;
		}
		else {
			x ~= y;
		}
	}
	s.sort!"a<b";
	t.sort!"a<b";
	s = -100000000000 ~ s ~ 100000000000;
	t = -100000000000 ~ t ~ 100000000000;
	foreach(x_;x) {
		auto sc = s.bisect!long(x_);
		auto tc = t.bisect!long(x_);
		auto tsl = s[sc+1] - x_;
		auto tsr = x_ - s[sc];
		auto ttl = t[tc+1] - x_;
		auto ttr = x_ - t[tc];
		writeln([
			max(tsr, ttr),
			max(tsl, ttl),
			tsr*2+ttl,
			tsr+ttl*2,
			tsl*2+ttr,
			tsl+ttr*2
		].reduce!((a, b) => min(a,b)));
	}
}
