public class instertCurriculum {
Curriculum__c cur = new Curriculum__c();
    
    public instertCurriculum(){
    cur.Name='Shyam Raju Group';
    cur.Class_1__c='Biology';
    cur.Class_2__c='Biology3';
    cur.Class_3__c='Computer Science 2';
    cur.Class_4__c='Physics';
    cur.Class_5__c='Biology 2';
    insert cur;
    System.debug('Success');
    System.debug('Success');
    System.debug('Success');
    }
}