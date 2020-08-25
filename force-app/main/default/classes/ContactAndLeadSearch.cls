public class ContactAndLeadSearch {
    public static List<List< SObject>> searchContactsAndLeads(String Searchparam){
/*List<List<Sobject>> contactsandleadsrecords =[find 'Searchparam' in all fields RETURNING contact(firstname,lastname),lead(firstname,lastname)];
     return contactsandleadsrecords ;*/
        list<list<Sobject>> search=[FIND :Searchparam in ALL Fields RETURNING Contact(FirstName),Lead(FirstName)];
        system.debug(search);
        Return search;
    }
}