public with sharing class CollegeSystemCopy {

    public String newName { get; set; }
    public ApexPages.StandardController controller; 
    
    Public List<Curriculum__c> existingCurr {set;get;}
    Public List<Class__c> existingClass {set;get;}
    Public List<Class__c> existingClass1 {set;get;}
    Public Curriculum__c insertCurriculum = new Curriculum__C();
    
    public Curriculum__c getCurriculum()
    {
        return insertCurriculum;
    }
    
    public String Name {get; set;}
    public String Class1 {get; set;}
    public String Class2 {get; set;}
    public String Class3 {get; set;}
    public String Class4 {get; set;}
    public String Class5 {get; set;}
    
    Public CollegeSystemCopy(){
        existingCurr = [Select Name, Class_1__c, Class_2__c, Class_3__c, Class_4__c, Class_5__c from Curriculum__c];
        
    }
    
   /* public List<SelectOption> getItems() {
	        List<SelectOption> options = new List<SelectOption>();
	        options.add(new SelectOption('US','US'));
	        options.add(new SelectOption('CANADA','Canada'));
	        options.add(new SelectOption('MEXICO','Mexico'));
	        return options;
	    }
    */
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
    
     public CollegeSystemCopy(ApexPages.StandardController Controller)
    {
        insertCurriculum = (Curriculum__C)Controller.getRecord(); 
        this.controller=Controller;  
    } 
    
    
    public PageReference updateCurriculum() {
      //insertCurriculum.Name=newName;
      //insertCurriculum.Class_1__c=newClass1;
      //insertCurriculum.Class_1__c=newClass2;
      //insertCurriculum.Class_1__c=newClass3;
      //insertCurriculum.Class_1__c=newClass4;
      //insertCurriculum.Class_1__c=newClass5;
      insert insertCurriculum;
	  return null;
	}

}