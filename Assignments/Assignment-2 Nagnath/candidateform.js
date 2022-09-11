import { LightningElement, track } from 'lwc';


export default class Candidateform extends LightningElement {
    @track firstName = '';
    @track lastName = '';
    @track dateofbirth='';
    @track isMale = false;
    @track isFemale = false;
    @track ageAbove60=false;
 
    handleChange(event) {
        const field = event.target.name;
        if (field === 'firstName') {
            this.firstName = event.target.value;
        } else if (field === 'lastName') {
            this.lastName = event.target.value;
        }
    }
 
    get uppercasedFullName() {
        return `${this.firstName} ${this.lastName}`.toUpperCase();
    }
 
    dateofbirth='';  
         age='';    
    handleonchange(event){
 
        this.dateofbirth=event.target.value.split('-')[0];
 
       console.log('handleonchange method '+this.dateofbirth);
        this.age=(new Date().getFullYear() - this.dateofbirth);
 
        if(this.age>=60){
            this.ageAbove60=true;
        }if(this.age<=60){
            this.ageAbove60=false;
        }
        if(this.age>18){
            this.ageBelow18=true;
        }
        }
 
        handleChangeForMale(event){
                this.isMale=true;
                this.isFemale=False;
        }
        handleChangeForFemale(event){
                this.isFemale=true;
                this.isMale=False;
        }
 }