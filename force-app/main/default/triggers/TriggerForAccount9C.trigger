trigger TriggerForAccount9C on STUDENT__c (before insert,before update) {
    for(student__c s:trigger.new){
        if(s.name=='male'){
            s.name='Mr '+s.name;
            
        }
        else{
            s.name='mrs'+s.name;
        }
    
    } 
}