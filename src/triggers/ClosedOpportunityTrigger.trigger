trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {

	List<Task> taskList = new List<Task>();

	for (Opportunity opp : Trigger.new) {
		if(opp.StageName == 'Closed Won') {
			taskList.add(new Task(
				Subject = 'Follow Up Test Task',
				WhatId = opp.ID));
		}
	}

	insert taskList;
}