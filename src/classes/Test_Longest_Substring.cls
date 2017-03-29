@isTest
private class Test_Longest_Substring {

	@isTest static void test_method_one() {
		Longest_Substring longestSubstring = new Longest_Substring();
		System.assertEquals(longestSubstring.solution1('abcabcbb'), 3);
		System.assertEquals(longestSubstring.solution1('bbbbb'), 1);
		System.assertEquals(longestSubstring.solution1('pwwkew'), 3);
	}

	// @isTest static void test_method_two() {
	// 	// Implement test code
	// }

}
