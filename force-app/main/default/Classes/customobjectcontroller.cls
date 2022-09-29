public class customobjectcontroller {

    public List<bank__c> Bankdetails{get;set;}
    public customobjectcontroller(){
        Bankdetails=new List<bank__c>();
        Bankdetails=[select id,name,Email__c from bank__c];
    }

}