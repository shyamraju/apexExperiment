public with sharing class DataLoadTestingClass {
	 public List<Curriculum__c> existingCurr {set;get;}
    public List<Class__c> existingClass {set;get;}
    public List<Class__c> existingClass1 {set;get;}
    Public DataLoadTestingClass(){
        existingCurr = [Select Name, Class_1__c, Class_2__c, Class_3__c, Class_4__c, Class_5__c from Curriculum__c];
        
    }

    
public List<SelectOption> getopenPresentationOptions(){
        List<SelectOption> options = new List<Selectoption>();
        existingClass = [Select Name from Class__c Where availability__c = True];
        
        
        for(Class__c obj : existingClass){
           options.add(new SelectOption(obj.id,obj.Name));
        }            
        return options;
}
public List<SelectOption> getopenPresentationOptions1(){
        List<SelectOption> options = new List<Selectoption>();
        
        existingClass = [Select Name from Class__c Where availability__c = False];
        
        for(Class__c obj : existingClass){
           options.add(new SelectOption(obj.id,obj.Name));
        }            
        return options;
}
    
    public PageReference doInsert() {
        Curriculum__c objdlt = new Curriculum__c();
        objdlt.name=newName;
        
        objdlt.Class_1__c=newClass1;
        objdlt.Class_2__c=newClass2;
        objdlt.Class_3__c=newClass3;
        objdlt.Class_4__c=newClass4;
        objdlt.Class_5__c=newClass5;
        insert objdlt;
       	existingCurr = [Select Name, Class_1__c, Class_2__c, Class_3__c, Class_4__c, Class_5__c from Curriculum__c];
        //pagereference ref = new pagereference('/apex/messsagePage');
        //ref.setredirect(true);
        return null;
    }



     public String newName {get; set;}
    public String newClass1 {get; set;}
    public String newClass2 {get; set;}
    public String newClass3 {get; set;}
    public String newClass4 {get; set;}
    public String newClass5 {get; set;}
   
 
}