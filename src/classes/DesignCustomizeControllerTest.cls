@isTest
private class DesignCustomizeControllerTest {

    private static User testAdminUser = new User(Id = UserInfo.getUserId());
    
    static testMethod void DesignCustomizeControllerTest1() {
    
        System.runAs(testAdminUser) {
            Test.startTest();

            DesignCustomizeController cls = new DesignCustomizeController();
            cls.doSearch();

            Test.stopTest();
            
             System.assertEquals(cls.accounts.isEmpty(), true);
        }
    }
    
    static testMethod void DesignCustomizeControllerTest2() {
    
        System.runAs(testAdminUser) {
        
            Account account = new Account(Name = 'Company');
            insert account;
        
            Test.startTest();

            DesignCustomizeController cls = new DesignCustomizeController();
            cls.doSearch();

            Test.stopTest();
            
             System.assertEquals(cls.accounts.isEmpty(), false);
        }
    }
}