@isTest
private class Test_Median_Of_Two_Sorted_Arrays {

	// @isTest static void test_method_one() {
	// 	List<Integer> num1 = new List<Integer>();
	// 	num1.add(1);
	// 	num1.add(3);
	// 	List<Integer> num2 = new List<Integer>();
	// 	num2.add(2);
	//
	// 	Median_Of_Two_Sorted_Arrays medianOfTwoSortedArrays = new Median_Of_Two_Sorted_Arrays();
	// 	System.assertEquals(medianOfTwoSortedArrays.solution1(num1, num2), 2.0);
	// }

	@isTest static void test_method_two() {
		List<Integer> num1 = new List<Integer>();
		num1.add(1);
		num1.add(2);
		List<Integer> num2 = new List<Integer>();
		num2.add(3);
		num2.add(4);

		Median_Of_Two_Sorted_Arrays medianOfTwoSortedArrays = new Median_Of_Two_Sorted_Arrays();
		
		System.assertEquals(medianOfTwoSortedArrays.solution1(num1, num2), 2.5);
	}

}
