import std.stdio;
import std.string;
import std.algorithm;

void main() {
	int a, b;
	foreach(c; readln().chomp()) {
		if (c == '0') ++a;
		if (c == '1') ++b;
	}
	write(min(a, b) * 2);
}
