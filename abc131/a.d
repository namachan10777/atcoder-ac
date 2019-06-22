import std.stdio;

void main() {
	char b = 'a';
	foreach(c; readln) {
		if (b == c) {
			write("Bad");
			return;
		}
		b = c;
	}
	write("Good");
}
