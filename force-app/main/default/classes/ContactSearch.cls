public class ContactSearch {
    public static List<contact> searchForContacts(String Lname, string PostalCode){
        list<contact> cons=new list<contact>([select id , name from contact where Lastname=:Lname and MailingPostalCode=:PostalCode]);
        return cons;
    }
}