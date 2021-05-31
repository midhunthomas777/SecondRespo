trigger Triggerfordulicate2 on STUDENT__c (before insert,before update) {
    for(student__c s:trigger.new){
        list<student__c>newlist=[select name,id from student__c where name =:s.name];
        if(newlist .size()>0){
            s.adderror('not allowed duplicate');
        }
    }
     
            
        
        
        
    

}