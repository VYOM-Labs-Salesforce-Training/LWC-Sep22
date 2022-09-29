public class Customobjectpageblock {

    public List<credit_card__c> creditCard{get;set;}
    public  Customobjectpageblock(){
  
    creditCard = [SELECT id,Name,Bank__c FROM credit_card__c ];
    }
}