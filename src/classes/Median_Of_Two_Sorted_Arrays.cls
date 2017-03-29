public class Median_Of_Two_Sorted_Arrays {
	public Decimal solution1(List<Integer> num1, List<Integer> num2){
		Decimal result;

		num1.addAll(num2);
		num1.sort();

		if(Math.mod(num1.size(),2) == 0){
			Decimal sum = num1[num1.size()/2] + num1[num1.size()/2-1];
			result = sum/2;
		}else{
			result = num1[Integer.valueOf(Math.floor(num1.size()/2))];
		}
		return result;
	}
}
