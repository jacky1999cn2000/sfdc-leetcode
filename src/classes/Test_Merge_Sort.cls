@isTest
private class Test_Merge_Sort {

	@isTest static void test_method_one() {
		Merge_Sort mergeSortInstance = new Merge_Sort();
		List<Integer> list1 = generateRamdonIntegerList2(100, 10);
		List<Integer> list2 = list1.clone();

		list1.sort();

		mergeSortInstance.mergeSort(list2, 0, list2.size()-1);
		System.debug('***list1 '+list1);
		System.debug('***list2 '+list2);

		System.assertEquals(true, list1.equals(list2));
	}

	@isTest static void test_method_two() {
		List<Integer> list1 = new List<Integer>();
		list1.add(5);
		list1.add(45);
		list1.add(9);
		List<Integer> list2 = new List<Integer>();
		list2.add(5);
		list2.add(45);
		list2.add(9);

		System.assertEquals(true, list1.equals(list2));
	}


	/*
		return a list of random integers
	*/
	private static List<Integer> generateRamdonIntegerList(Integer size){
	   List<Integer> randomIntegerList = new List<Integer>();

	   for (Integer i =0; i< size; i++){
	      Integer rand = Crypto.getRandomInteger();
	      randomIntegerList.add(rand);
	   }

	 	 return randomIntegerList;
	}

	/*
		return a list of random integers (range 0 - upperLimit) p.s. upperLimit should be less than 999 since we timed 1000 to make the rand 0<rand<999
		https://developer.salesforce.com/blogs/developer-relations/2013/07/selecting-random-numbers-and-records-on-the-force-com-platform-part-1.html
	*/
	private static List<Integer> generateRamdonIntegerList2(Integer upperLimit, Integer size){

	   List<Integer> randomIntegerList = new List<Integer>();

	   for (Integer i =0; i< size; i++){
	      Integer rand = Math.mod(Math.round(Math.random()*1000), upperLimit);
	      randomIntegerList.add(rand);
	   }

	 	 return randomIntegerList;
	}

	// private static Boolean areValuesInTheseTwoListsInSameOrder(List<Integer> list1, List<Integer> list2){
	// 	if(list1.size() != list2.size()){
	// 		return false;
	// 	}
	//
	// 	for(Integer i = 0; i < list1.size(); i++){
	// 		if(list1[i] != list2[i]){
	// 			return false;
	// 		}
	// 	}
	//
	// 	return true;
	// }

}
