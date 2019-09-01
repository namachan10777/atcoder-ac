import std.stdio;
import std.string;
import std.algorithm;
import std.conv;
import std.typecons;
import std.range;

Tuple!(int, int) nml(Tuple!(int, int) tp) {
	return tuple(min(tp[0], tp[1]), max(tp[0], tp[1]));
}

Tuple!(int, int, bool) nml2(Tuple!(int, int, bool) tp) {
	return tuple(min(tp[0], tp[1]), max(tp[0], tp[1]), tp[2]);
}

void main() {
	int n;
	scanf("%d\n", &n);
	int[][] as = new int[][n];
	Tuple!(int, int)[][int] map;
	bool[Tuple!(int, int)] memo;
	Tuple!(int, int, bool)[][Tuple!(int, int)] graph;
	foreach (i; 0..n) {
		as[i] = readln.chomp.split.map!(s => s.to!int-1).array;
	}
	foreach(i; 0..n-1) {
		foreach(j; 0..n) {
			auto node = tuple(j, as[j][i]).nml;
			if (node in memo) continue;
			Tuple!(int, int)[] keys;
			if (j in map) keys ~= map[j];
			if (as[j][i] in map) keys ~= map[as[j][i]];
			bool dup;
			foreach (key; keys) {
				if (key == node) continue;
				graph[key] ~= tuple(node[0], node[1], false);
			}
			map[j] ~= node;
			map[as[j][i]] ~= node;
			memo[node] = true;
		}
	}
	foreach(key; graph.keys) {
		writeln(key, " -> ", graph[key]);
		/*while (key in graph) {
			if (graph[key][2]) {
				write(-1);
				return;
			}
			graph[key][2] = true;
			key = tuple(graph[key][0], graph[key][1]);
		}*/
	}
}
