public class Add_Two_Numbers {

	public class ListNode {
		public Integer val;
		public ListNode next;

		public ListNode(Integer x){
			val = x;
		}
	}

	public ListNode solution1(ListNode l1, ListNode l2) {

		Integer initialSum = l1.val + l2.val;

		ListNode result;
		Integer carry;

		if(initialSum > 10){
			result = new ListNode(initialSum - 10);
			carry = 1;
		}else{
			result = new ListNode(initialSum);
			carry = 0;
		}

		ListNode original = result;

		Integer val1;
		Integer val2;
		Integer sum;

		l1 = l1.next;
		l2 = l2.next;

		while(l1 != null || l2 != null){
			val1 = l1 == null ? 0 : l1.val;
			val2 = l2 == null ? 0 : l2.val;
			sum = val1 + val2 + carry;

			if(sum >= 10){
				result.next = new ListNode(sum-10);
				carry = 1;
			}else{
				result.next = new ListNode(sum);
				carry = 0;
			}

			l1 = l1 == null ? null : l1.next;
			l2 = l2 == null ? null : l2.next;
			result = result.next;
		}

		if (carry > 0) {
        result = new ListNode(carry);
    }

		return original;
	}
}
