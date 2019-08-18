import std.stdio;
import std.string;
import std.algorithm;

void main() {
	auto s = readln.chomp;
	size_t begin, end = 1, cnt;
	string cache = "";
	while (end < s.length) {
		if (cache != s[begin..end]) {
			++cnt;
			cache = s[begin..end];
			begin = end;
			end = end + 1;
		}
		else {
			++end;
		}
	}
	if (cache == s[begin..end])
		write(cnt);
	else
		write(cnt+1);
}
