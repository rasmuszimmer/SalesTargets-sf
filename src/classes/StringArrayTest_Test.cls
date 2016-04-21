@isTest
private class StringArrayTest_Test {

	static testMethod void generateStringArrayShouldReturnCorrectArray() { 

		List<String> returnList = StringArrayTest.generateStringArray(3);

		System.assertEquals(returnList.size(), 3);

		for(Integer i = 0; i < returnList.size(); i++){
			String item = returnList.get(i);
			System.assertEquals(item, 'Test '+i);
		}
     } 
}