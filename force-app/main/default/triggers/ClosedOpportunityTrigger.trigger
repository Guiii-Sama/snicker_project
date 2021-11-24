trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
    
    List<Task> taskListToInsert = new List<Task>();
    
    for(Opportunity opp : Trigger.new){
        if(opp.StageName == 'Closed Won'){
            Task task = new Task();
            task.Subject = 'Follow up Order';
            task.WhatId = opp.Id;
            taskListToInsert.add(task);
        }
    }
    

        insert taskListToInsert;

	
}