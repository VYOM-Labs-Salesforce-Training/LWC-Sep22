public class ass16 {
    public string username{get;set;}
    public string password{get;set;}
    public Boolean to{get;set;}
    public ass16(){
       to=false;
    }
    public  void tovalidate(){
       
        if((username!='Nagnath') && (password!='pune@12345'))
        {
           to=true;
        }  
        
    }


}