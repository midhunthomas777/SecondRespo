trigger Triggerfordelete5 on Salary__c (before insert ) {
    for(salary__c sal:trigger.new){
        if(sal.CITY__c==null){
            sal.CITY__c='pune';
        }
    }
    

}