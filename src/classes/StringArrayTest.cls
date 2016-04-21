public with sharing class StringArrayTest {

	public static List<String> generateStringArray(Integer numStrings){
		
		List<String> returnList = new List<String>();

		for(Integer i = 0; i < numStrings; i++) {
			returnList.add('Test '+ i);
		}

		return returnList;
	}
}