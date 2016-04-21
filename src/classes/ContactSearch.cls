public class ContactSearch {

	public static List<Contact> searchForContacts(String lastName, String mailingPostalCode){
		List<Contact> matches = [Select ID From Contact
							 	 Where LastName =:lastName AND MailingPostalCode =:mailingPostalCode];

	 	return matches;
	}
}