import std.string;
import std.stdio;
import std.algorithm;
import std.conv;
import std.typecons;

void main() {
	long[Tuple!(immutable(char), size_t)] dp;
	long[char] checks;
	auto s = readln.chomp;
	auto t = readln.chomp;
	foreach(c; s) {
		checks[c] = 0;
	}
	bool check = true;
	foreach(c; t) {
		if (c !in checks) {
			check = false;
		}
	}
	if (check) {
		size_t i;
		foreach(c; t) {
			auto key = tuple(c, i%s.length);
			if (key in dp) {
				i += dp[key];
			}
			else {
				size_t j;
				for(;j < s.length; ++j) {
					auto p = (i + j) % s.length;
					if (s[p] == c) break;
				}
				i += j+1;
				dp[key] = j+1;
			}
		}
		write(i);
	}
	else {
		write(-1);
	}
}
