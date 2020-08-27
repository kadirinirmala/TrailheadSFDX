global class LeadProcessor implements Database.Batchable<Sobject>,Database.Stateful {
    global DataBase.QueryLocator start(DataBase.BatchableContext BC){
        return DataBase.getQueryLocator(
            'Select LeadSource from lead limit 10'
        );
    }
    global void execute(Database.BatchableContext BC,list<lead> leadlist){ 
        List<lead> newleadlist=new list<lead>();
        for(lead l :leadlist){
            l.LeadSource='DreamForce';
            newleadlist.add(l);
        }
        update newleadlist;
    }
    global void finish(DataBase.BatchableContext BC){

    }
}