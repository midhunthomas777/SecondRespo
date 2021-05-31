public class TrgiClass {
    public  void before_insert(list<STUDENT__c>stu){
        for(STUDENT__c s:stu){
            if(s.Adress__c==null){
                s.Adress__c='california';
                
            }
        }
    }
    public  void before_update(list<STUDENT__c>stu){
        for(student__c s:stu){
            if(s.adress__c==null){
                s.Adress__c='newyork';
            }
        }
    }

}