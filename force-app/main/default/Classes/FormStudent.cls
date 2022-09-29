public class FormStudent {
  
    public string fname;
    public string lname;
    public string email;
    public  Date DOB{get;set;}
     public string ca;
     public string linked;
    
    public FormStudent(){}
    
    public FormStudent(String f,string l,string e,Date dob,string c,string m){
        fname=f;
        lname = l;
        email = e;
        DOB = dob;
        ca = c;
        linked = m;
        system.debug('student date'+DOB);
    }
  
    }