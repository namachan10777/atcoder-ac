import std;

void main(){ 
	int n, k;
	int[] as;
	scanf("%d %d\n", &n, &k);
	auto mem = new bool[n];
	foreach(_i; 0..k) {
		int d;
		scanf("%d", &d);
		foreach (_j; 0..d) {
			int a;
			scanf("%d", &a);
			mem[a-1] |= true;
		}
	}
	mem.count!"!a".writeln;
}
