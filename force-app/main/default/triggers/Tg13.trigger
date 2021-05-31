trigger Tg13 on Deposit__c (after  delete) {
    for(deposit__c d:trigger.old){
        d.adderror('you cannot delete this');
    }

}