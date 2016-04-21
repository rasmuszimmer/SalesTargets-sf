public class AccountHandler {

	public static Account insertNewAccount(String accountName){
		Account account = new Account(Name = accountName);

		try{
			insert account;
		}
		catch(DmlException e){
			return null;
		}

		return account;
	}
}