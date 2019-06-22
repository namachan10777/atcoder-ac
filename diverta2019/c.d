import std.stdio;
import std.string;
import std.algorithm;

void main() {
	int n;
	scanf("%d\n", &n);
	int incl, lb, ra, half;
	for(size_t i;i < n; ++i){
		auto l = readln.chomp;
		incl += l.count("AB");
		auto b = l[0] == 'B';
		auto a = l[$-1] == 'A';
		if (a) ++ra;
		if (b) ++lb;
		if ((a || b) && (a != b)) ++half;
	}
	if (min(ra,lb) > 0 && half == 0) --incl;
	write(incl + min(lb, ra));
}
