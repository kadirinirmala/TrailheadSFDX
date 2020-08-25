trigger ClosedOpportunityTrigger on Opportunity (before insert, before update) {
    List<Task> taskList= New List<Task>();
    for(Opportunity op:trigger.new){
         
        if(op.StageName == 'Closed Won'){
            Task t=new Task(Subject='Follow Up Test Task',WhatId = op.Id);
            tasklist.add(t);
    }
    }
    Insert tasklist;
}