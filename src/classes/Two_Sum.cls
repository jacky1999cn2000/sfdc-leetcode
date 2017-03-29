public class Two_Sum {

	public List<Integer> solution1(List<Integer> numberList, Integer target) {

		List<Integer> resultList = new List<Integer>();

		for(Integer i = 0; i < numberList.size()-1; i++){
			for(Integer j = i+1; j < numberList.size(); j++){
				if(numberList[i] + numberList[j] == target){
					resultList.add(i);
					resultList.add(j);
					break;
				}
			}
		}

		return resultList;
	}

	public List<Integer> solution2(List<Integer> numberList, Integer target) {

		List<Integer> resultList = new List<Integer>();

		Map<Integer, Integer> numberIndexMap = new Map<Integer, Integer>();

		for(Integer i = 0; i < numberList.size(); i++){
			numberIndexMap.put(numberList[i], i);
		}

		for(Integer j = 0; j < numberList.size(); j++){
			Integer complement = target - numberList[j];
			if(numberIndexMap.containsKey(complement) && numberIndexMap.get(complement) != j){
				resultList.add(j);
				resultList.add(numberIndexMap.get(complement));
				break;
			}
		}

		return resultList;
	}
}
