@isTest  
   private class TestVisibleExampleTest {  
       @isTest static void test1() {  
           // Accessing private variable annotated with TestVisible  
           Integer i = TestVisibleExample.recordNumber;  
           System.assertEquals(1, i);  
     
           // Accessing private method annotated with TestVisible  
           TestVisibleExample.updateRec();  
     }  
 }