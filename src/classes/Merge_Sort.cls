public with sharing class Merge_Sort {

	//http://www.jianshu.com/p/ce1ebaf0907b

	private void mergeArray(List<Integer> theList, Integer first, Integer mid, Integer last){

		List<Integer> tempList = theList.clone();

		Integer i = first, j = mid + 1;
		Integer m = mid, n = last;
		Integer k = 0;

		while(i <= m && j <= n){
			if(theList[i] <= theList[j]){
				tempList[k++] = theList[i++];
			}else{
				tempList[k++] = theList[j++];
			}
		}

		while(i <= m){
			tempList[k++] = theList[i++];
		}

		while(j <= n){
			tempList[k++] = theList[j++];
		}

		for(Integer v = 0; v < k; v++){
			theList[first + v] = tempList[v];
		}
	}

	public void mergeSort(List<Integer> theList, Integer first, Integer last){

		if(first < last){
			Integer mid = (first + last)/2;
			mergeSort(theList, first, mid);
			mergeSort(theList, mid+1, last);
			mergeArray(theList, first, mid, last);
		}

	}

}
