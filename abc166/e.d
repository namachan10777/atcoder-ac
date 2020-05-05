import std;

void main() {
	int n;
	scanf("%d\n", &n);
	auto as = readln.chomp.split.to!(int[]);
	long count = 0;
	int[long] memj;
	foreach(i;0..as.length) {
		++memj[i-as[i]];
	}
	foreach(i;0..as.length) {
		if (i+as[i] in memj) {
			count += memj[i+as[i]];
		}
	}
	write(count);
}
