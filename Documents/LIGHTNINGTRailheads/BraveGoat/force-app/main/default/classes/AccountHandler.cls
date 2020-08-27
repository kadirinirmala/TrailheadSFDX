public class AccountHandler {
    //SFDX trailheads
    
    public static void insertAccount(integer n){
        list<account> addAccounts =new list<account>();
    Integer counter = 1;
        
        while(counter <= 3) {
            
            Account a = new Account();
            a.Name = 'Acme Inc ' + counter;
            a.AccountNumber = 'A000' + counter;
            
            addAccounts.add(a);
            
            counter++;
            
        }
        
            if(addAccounts.size() > 0) {
            insert addAccounts;
        }
    }    
    
    /*public static Account insertNewAccount(string accname){
        if(accname!=''){
            try{
                account a= new account(name=accname);
                insert a;
                system.debug(a);
                return a;
            }
            catch(Exception e){
                system.debug('account not created');
                return null;
            }
        }
        else
            return null;
        
    }*/
}