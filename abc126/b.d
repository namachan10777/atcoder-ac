import std.stdio;
import std.string;
import std.conv;

void main() {
	auto l = readln.chomp;
	auto fst = l[0..2].to!int;
	auto snd = l[2..4].to!int;
	auto fM = fst > 0 && fst <= 12;
	auto sM = snd > 0 && snd <= 12;
	if (fM && sM)
		write("AMBIGUOUS");
	else if (sM)
		write("YYMM");
	else if (fM)
		write("MMYY");
	else
		write("NA");
}
