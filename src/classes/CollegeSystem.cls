public class CollegeSystem {
    public List<Curriculum__c> existingCurr {set;get;}
    public List<Class__c> existingClass {set;get;}
    public List<Class__c> existingClass1 {set;get;}
    public Curriculum__c insertCurriculum = new Curriculum__C();
    public String newName {get; set;}
    public String newClass1 {get; set;}
    public String newClass2 {get; set;}
    public String newClass3 {get; set;}
    public String newClass4 {get; set;}
    public String newClass5 {get; set;}
    Public CollegeSystem(){
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
    
    public PageReference updateCurriculum() {
        System.debug('NewName' + newName + '1' + newClass1 + '2' + newClass2 + '3' + newClass3 + '4' + newClass4 + '5' + newClass5 );
      insertCurriculum.Name=newName;
      insertCurriculum.Class_1__c=newClass1;
      insertCurriculum.Class_2__c=newClass2;
      insertCurriculum.Class_3__c=newClass3;
      insertCurriculum.Class_4__c=newClass4;
      insertCurriculum.Class_5__c=newClass5;
      insert insertCurriculum;
	    return null;
	}

}