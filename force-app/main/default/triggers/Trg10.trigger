trigger Trg10 on Position__c (before delete) {
    for(position__c p:trigger.old){
        p.adderror('you cannot delete any record');
        
    }

}