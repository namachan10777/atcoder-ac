import std;

void main() {
	int N, M, Q;
	scanf("%d %d %d\n", &N, &M, &Q);
	auto as = new int[Q];
	auto bs = new int[Q];
	auto cs = new int[Q];
	auto ds = new int[Q];
	foreach(q;0..Q) {
		int a, b, c, d;
		scanf("%d %d %d %d\n", &a, &b, &c, &d);
		as[q] = a-1;
		bs[q] = b-1;
		cs[q] = c;
		ds[q] = d;
	}
	auto As = new int[10];
	long scoremax = -1;
	foreach(d0; 0..M){
		foreach(d1; d0..M){
			foreach(d2; d1..M){
				foreach(d3; d2..M){
					foreach(d4; d3..M){
						foreach(d5; d4..M){
							foreach(d6; d5..M){
								foreach(d7; d6..M){
									foreach(d8; d7..M){
										foreach(d9; d8..M){
											long score;
											As[0] = d0;
											As[1] = d1;
											As[2] = d2;
											As[3] = d3;
											As[4] = d4;
											As[5] = d5;
											As[6] = d6;
											As[7] = d7;
											As[8] = d8;
											As[9] = d9;
											foreach(q; 0..Q){
												if (As[bs[q]]-As[as[q]] == cs[q])
													score += ds[q];
											}
											scoremax = max(score, scoremax);
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}
	scoremax.write;
}
