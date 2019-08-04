import std.stdio;
import std.string;
import std.conv;
import std.algorithm;

void main() {
	auto s = readln.chomp;
	auto y = new int[s.length];
	int begin, i;
	char mode = 'R';
	foreach(c; s) {
		if (c != mode && mode == 'R') {
			y[i-1] += (i-begin+1)/2;
			y[i] += (i-begin+1)/2 + (i-begin+1)%2;
			begin = i;
			mode = 'L';
		}
		else if (c != mode) {
			y[begin-1] += (i-begin-1)/2 + (i-begin-1)%2;
			y[begin] += (i-begin-1)/2;
			begin = i;
			mode = 'R';
		}
		++i;
	}
	y[begin-1] += (i-begin-1)/2 + (i-begin-1)%2;
	y[begin] += (i-begin-1)/2;
	y.map!(i => i.to!string).join(' ').write;
}
