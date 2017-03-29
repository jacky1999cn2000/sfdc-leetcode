@isTest
private class Test_Add_Two_Numbers {

	@isTest static void test_method_one() {
		Add_Two_Numbers.ListNode l1 = new Add_Two_Numbers.ListNode(2);
		l1.next = new Add_Two_Numbers.ListNode(4);
		l1.next.next = new Add_Two_Numbers.ListNode(3);

		Add_Two_Numbers.ListNode l2 = new Add_Two_Numbers.ListNode(5);
		l2.next = new Add_Two_Numbers.ListNode(6);
		l2.next.next = new Add_Two_Numbers.ListNode(4);

		Add_Two_Numbers addTwoNumbers = new Add_Two_Numbers();
		Add_Two_Numbers.ListNode result = addTwoNumbers.solution1(l1,l2);
		System.assertEquals(result.val, 7);
		System.assertEquals(result.next.val, 0);
		System.assertEquals(result.next.next.val, 8);
	}

	// @isTest static void test_method_two() {
	// 	// Implement test code
	// }

}
