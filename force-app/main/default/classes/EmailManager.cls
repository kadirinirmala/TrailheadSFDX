public with sharing class EmailManager {

    public static void sendMail(String[] addresses,String[] subjects,String[] messages){
        messaging.SingleEmailMessage[] emails=new messaging.SingleEmailMessage[]{};
        integer totalemails=addresses.size();
        for(integer i=0;i<totalemails;i++){
            messaging.SingleEmailMessage email=new messaging.SingleEmailMessage();
            email.setSubject(subjects[i]);
            email.setToAddresses(new List<String> {addresses[i]});
            email.setPlainTextBody(messages[i]);
            emails.add(email);
        }
       messaging.sendEmail(emails); 
        
    }
}