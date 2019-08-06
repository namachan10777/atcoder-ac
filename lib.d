// めぐる式二分探索テンプレ
// https://qiita.com/drken/items/97e37dd6143e33a64c8c

bool isOk(long[] arr, size_t idx, long key) {
	if (arr[idx] >= key) return true;
	return false;
}

size_t binsearch(long[] arr, int key) {
	long left = -1;
	long right = arr.length;

	while(right - left > 1) {
		long mid = left + (right - left) / 2;
		if (isOk(arr, mid, key)) right = mid;
		else left = mid;
	}
	return right;
}
