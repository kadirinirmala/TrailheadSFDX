public class RandomContactFactory {

    public static List<Contact> generateRandomContacts(integer noofcontacts, string contactlastname){
        List<contact> cons=new list<Contact>();
        for(integer i=1; i <= noofcontacts; i++){
            contact c=new contact(firstname='T}est'+i, lastname='lastname');
            cons.add(c);
        }
        Return cons;
    }
}