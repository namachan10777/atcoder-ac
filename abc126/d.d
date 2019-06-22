import std.stdio;
import std.algorithm;
import std.range;

struct Set {
	int v, u, w;
}

struct Task {
	int i;
}

void main() {
	int n;
	scanf("%d\n", &n);
	auto y = new Set[n];
	auto x = new int[n];
	auto c = new int[n];
	foreach(i; 0..n) {
		int v, u, w;
		scanf("%d %d %d\n", &v, &u, &w);
		y[i] = Set(v, u, w);
	}
	auto queue = [Task(0)];
	while(!queue.empty) {
		auto task = queue[0];
		++c[task.i];
		foreach(i; 0..n) {
			if (y[i].v - 1 == task.i && c[y[i].u-1] == 0) {
				x[y[i].u-1] = (x[task.i] + y[i].w) % 2;
				queue ~= Task(y[i].u-1);
			}
			if (y[i].u - 1 == task.i && c[y[i].v-1] == 0) {
				x[y[i].v-1] = (x[task.i] + y[i].w) % 2;
				queue ~= Task(y[i].v-1);
			}
		}
		queue = queue[1..$];
		writeln(queue);
	}
	foreach(ans; x) writeln(ans);
}
