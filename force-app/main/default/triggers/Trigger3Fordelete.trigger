trigger Trigger3Fordelete on STUDENT__c (before delete) {
    for(student__c s:trigger.old){
        s.adderror('you cnnot delete record');
    }
}