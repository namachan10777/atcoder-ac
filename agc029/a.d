import std.stdio;
import std.string;

void main() {
	auto l = readln().chomp();
	size_t c;
	size_t t;
	for (size_t i; i < l.length; ++i) {
		if (l[i] == 'W') {
			t += i - c;
			++c;
		}
	}
	t.write;
}
