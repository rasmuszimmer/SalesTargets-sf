public class ContactAndLeadSearch {

	public static List<List<SObject>> searchContactsAndLeads(String nameQuery) {
		List<List<sObject>> matchList = [FIND :nameQuery IN NAME FIELDS
										 RETURNING Lead(FirstName,LastName),Contact(FirstName,LastName)];

		return matchList;
	}
}