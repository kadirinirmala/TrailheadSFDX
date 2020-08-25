@isTest
private class TestRestrictContactByName {
    @isTest static void testInsert(){
    
    contact c= new contact(lastname='INVALIDNAME',firstname='Error');
        test.startTest();
        try{
            insert c;
        }
        catch(Exception e){
            test.stoptest();
        }
    }
}