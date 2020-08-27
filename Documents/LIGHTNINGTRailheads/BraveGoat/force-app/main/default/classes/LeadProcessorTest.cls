@isTest global class LeadProcessorTest {

    @Testsetup global static void LeadProcessorTestMethod(){
       list<lead> leadlist=new list<lead>();
        leadlist.add(new lead(lastname='Jon',company='mojito sns',status='Open'));
        insert leadlist;   
    }
    @isTest global static void TestRun(){
        Test.StartTest();
        LeadProcessor LP=new LeadProcessor();
        id jobid=DataBase.executeBatch(LP);
        Test.StopTest();
        system.debug(jobid);
    }

}