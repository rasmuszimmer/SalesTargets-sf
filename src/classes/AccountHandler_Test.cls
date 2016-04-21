@isTest
private class AccountHandler_Test {
	static testMethod void insertNewAccountCalledWithValidNameShouldReturnAccount(){
		Account account = AccountHandler.insertNewAccount('TestAcct');
		System.assertNotEquals(null, account);
	} 

	static testMethod void insertNewAccountCalledWithEmptyStringShouldReturnNull(){
		Account account = AccountHandler.insertNewAccount('');
		System.assertEquals(null, account);	
	}
}