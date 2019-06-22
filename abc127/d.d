import std.stdio;
import std.conv;
import std.string;
import std.algorithm;

struct BC { long b, c; }

void main() {
	long n, m;
	scanf("%ld %ld\n", &n, &m);
	auto a = readln.chomp.split.to!(long[]);
	auto bc = new BC[m];
	foreach(i; 0..m) {
		long b, c;
		scanf("%ld %ld\n", &b, &c);
		bc[i] = BC(b,c);
	}
	bc.sort!((x, y) => x.c > y.c);
	a.sort!"a<b";
	size_t bc_i, a_i;
	long cnt;
	while(a_i < a.length) {
		if (bc_i < bc.length) {
			for(size_t j; j < bc[bc_i].b && a_i < a.length; ++j) {
				cnt += max(a[a_i++], bc[bc_i].c);
			}
			++bc_i;
		}
		else {
			cnt += a[a_i++];
		}
	}
	cnt.write;
}
