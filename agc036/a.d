import std.stdio;
import std.math;
import std.conv;

void main() {
	long s;
	scanf("%ld", &s);
	long x2 = s.to!double.sqrt.ceil.to!int;
	writefln("0 0 %s %s %s %s", x2, x2 * x2 - s, 1, x2);
}
