@isTest
private class TestVerifyDate {
	
	@isTest static void CheckDatesCalledWithPastDateShouldReturnEndOfMonth() {

		// Input
		Date date1 = Date.newInstance(1960, 5, 25);
		Date date2 = Date.newInstance(1960, 4, 17);

		// Expected 
		Date expectedDate = Date.newInstance(1960, 5, 31);

		// Actual
		Date resultDate = VerifyDate.CheckDates(date1, date2);

		// Assertion
		System.assertEquals(resultDate, expectedDate);
	}

	@isTest static void CheckDatesCalledWithMoreThan30DaysShouldReturnEndOfMonth() {

		// Input
		Date date1 = Date.newInstance(1960, 4, 17);
		Date date2 = Date.newInstance(1960, 5, 25);

		// Expected 
		Date expectedDate = Date.newInstance(1960, 4, 30);

		// Actual
		Date resultDate = VerifyDate.CheckDates(date1, date2);

		// Assertion
		System.assertEquals(resultDate, expectedDate);
	}
	
	@isTest static void CheckDatesCalledWithInRangeShouldReturnSecondDate() {

		// Input
		Date date1 = Date.newInstance(1960, 4, 17);
		Date date2 = Date.newInstance(1960, 5, 14);

		// Expected output
		Date expectedDate = date2;

		Date resultDate = VerifyDate.CheckDates(date1, date2);
		System.assertEquals(resultDate, expectedDate);
	}
	
}