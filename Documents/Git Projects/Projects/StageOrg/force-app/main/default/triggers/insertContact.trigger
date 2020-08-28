trigger insertContact on Account (before insert) {
Contact cont = new Contact();
cont.LastName = Trigger.new[0].name;
cont.AccountId = Trigger.new[0].ID; 
insert cont;
}