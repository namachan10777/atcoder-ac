import std.stdio;
import std.math;
import std.conv;

void main(){
	int n;
	scanf("%d", &n);
	int digit = log10(n.to!float).floor.to!int;
	if (digit == 0) {
		write(n);
	}
	else if (digit == 1) {
		write(9);
	}
	else if (digit == 2) {
		write(9 + (n-99));
	}
	else if (digit == 3) {
		write(9 + 900);
	}
	else if (digit == 4) {
		write(9 + 900 +  (n-9999));
	}
	else {
		write(9 + 900 + 90000);
	}
}
