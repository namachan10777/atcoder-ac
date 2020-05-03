import std;

void main(){ 
	int n,m;
	scanf("%d %d\n", &n, &m);
	auto hs = readln.chomp.split.to!(int[]);
	auto as = new int[m];
	auto bs = new int[m];
	auto mem = new bool[n];
	foreach(ref x; mem) {
		x = true;
	}
	foreach(i; 0..m) {
		int a,b;
		scanf("%d %d\n", &a, &b);
		if (hs[a-1] <= hs[b-1]) {
			mem[a-1] &= false;
		}
		if (hs[b-1] <= hs[a-1]) {
			mem[b-1] &= false;
		}
	}
	mem.count!"a".writeln;
}
