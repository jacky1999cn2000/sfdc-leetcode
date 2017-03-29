@isTest
private class Test_Two_Sum {

	@isTest static void test_method_one() {

		List<Integer> numberList = new List<Integer>();
		numberList.add(2);
		numberList.add(7);
		numberList.add(11);
		numberList.add(15);
		Integer target = 9;

		Two_Sum twoSum = new Two_Sum();
		List<Integer> result = twoSum.solution1(numberList, target);
		System.debug('***result '+result);
		System.assertEquals(result[0], 0);
		System.assertEquals(result[1], 1);
	}

	@isTest static void test_method_two() {
		List<Integer> numberList = new List<Integer>();
		numberList.add(2);
		numberList.add(7);
		numberList.add(11);
		numberList.add(15);
		Integer target = 9;

		Two_Sum twoSum = new Two_Sum();
		List<Integer> result = twoSum.solution2(numberList, target);
		System.debug('***result '+result);
		System.assertEquals(result[0], 0);
		System.assertEquals(result[1], 1);
	}

}
