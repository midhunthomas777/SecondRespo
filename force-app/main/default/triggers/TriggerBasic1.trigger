trigger TriggerBasic1 on Salary__c (before insert) {
    for(salary__c s:trigger.new){
        
        s.CITY__c='delhi';
    }
   
}