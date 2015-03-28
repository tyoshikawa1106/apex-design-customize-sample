public with sharing class DesignCustomizeController {

    public List<Account> accounts {get; set;}

    public DesignCustomizeController() {
        this.accounts = new List<Account>();
    }
    
    public void doSearch() {
        this.accounts = [SELECT Name FROM Account ORDER BY Name ASC LIMIT 20];
    }
}