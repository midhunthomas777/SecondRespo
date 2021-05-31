trigger BusTrigger on Bus__c (before delete) {
    for(Bus__c bus:trigger.old){
        bus.adderror('yoo cannot delete this account');
    }

}