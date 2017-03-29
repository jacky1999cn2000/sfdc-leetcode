public class Longest_Substring {

	private Map<String, Integer> getLength(String s, Integer startIndex){

		Map<String, Integer> resultMap = new Map<String, Integer>();
		Set<Integer> charSet = new Set<Integer>();

		for(Integer i = startIndex; i < s.length(); i++){
			if(charSet.contains(s.charAt(i))){
				resultMap.put('length', charSet.size());
				resultMap.put('startIndex', i);
				break;
			}else{
				charSet.add(s.charAt(i));
			}
		}

		return resultMap;
	}

	public Integer solution1(String s){
		Integer longestLength = 0;
		Integer startIndex = 0;

		while(startIndex != s.length()-1){
			Map<String, Integer> resultMap = getLength(s, startIndex);
			if(resultMap.get('length') > longestLength){
				longestLength = resultMap.get('length');
			}
			startIndex = resultMap.get('startIndex');
		}

		return longestLength;
	}

}
