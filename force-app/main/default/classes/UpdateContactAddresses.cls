public class UpdateContactAddresses implements Database.Batchable<sObject>, Database.Stateful {
    public integer totalrecordsprocessed=0;
    
    public database.QueryLocator start(database.BatchableContext bc){
        return database.getQueryLocator('Select id,Billingstreet,BillingCity,Billingstate,BillingPostalCode,'+
                                        '(Select id,MailingCity,MailingStreet,MailingState,MailingPostalCode from contact),'+
                                        'from account where BillingCountry=\'USA\'');
    }
    public void execute(database.BatchableContext bc,List<account> scope){
        List<contact> Contacts = new list<contact>();
        for(account account: scope){
            For(contact contact: account.contacts){
                contact.mailingCity=account.BillingCity;
                contact.MailingStreet=account.Billingstreet;
                contact.MailingState=account.Billingstate;
                contact.MailingPostalCode=account.BillingPostalCode;
                contacts.add(contact);
               totalrecordsprocessed+=1;
            }
           
        }
       update contacts; 
    }
    public void finish(database.BatchableContext bc){
        System.debug(totalrecordsprocessed + ' records processed. Shazam!');
    }

}