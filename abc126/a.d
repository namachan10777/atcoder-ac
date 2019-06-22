import std.stdio;
import std.string;

void main() {
	int n, k;
	scanf("%d %d\n", &n, &k);
	auto l = readln.chomp();
	write(l[0..k-1] ~ l[k-1..k].toLower ~ l[k..$]);
}
