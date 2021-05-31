trigger Trg1 on Deposit__c (before insert,before update ) {
    for(Deposit__c d:trigger.new){
        if(d.Deposit_Amount__c <=500){
            d.adderror('cannot create amount with this amount ');
        }
        
    }

}