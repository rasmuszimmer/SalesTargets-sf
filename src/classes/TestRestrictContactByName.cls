@isTest
private class TestRestrictContactByName {
	
	@isTest static void restrictContractByNameCalledWithInvalidNameShouldBlockInsertion() {
		
		// Test data setup
		Contact cont = new Contact(LastName = 'INVALIDNAME');

		// Perform test
		Test.startTest();
		Database.SaveResult result = Database.insert(cont, false);
		Test.stopTest();

		// Assert
		System.assert(!result.isSuccess());
		System.assert(result.getErrors().size() > 0);
	}
}