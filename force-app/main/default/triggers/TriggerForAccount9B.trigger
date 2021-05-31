trigger TriggerForAccount9B on STUDENT__c (before insert,before update) {
    for(student__c s:trigger.new){
        s.name='MR'+s.name;
    }
   
}