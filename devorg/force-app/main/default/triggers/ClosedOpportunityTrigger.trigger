trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
    if (Trigger.isafter) {
       if (Trigger.isInsert) {
        
    List<Opportunity> oppList = new List<Opportunity>();
    for(Opportunity a : Trigger.New) {
        
        if(a.StageName == 'Closed Won'){
            oppList.add(a);
            
        }
    }
         
    List<Task> taskList = new List<Task>();
    if(oppList != null){
        
    for(Opportunity b: oppList){
        Task tk = new Task();
        tk.subject = 'Follow Up Test Task';
        tk.WhatId = b.Id;
        taskList.add(tk);
      }
      insert taskList;
   } 
  
       }
    }
}