public class buttonclickaccountinformation {
    
    public List<Account> accounts
    { get;set;
    }
    
    public void onClick()
    {
    accounts=new List<Account>();
    accounts=[SELECT id,Name, Type,Industry,AnnualRevenue FROM Account];
    }


}