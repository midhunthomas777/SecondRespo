trigger Trg4 on Parents__c (before insert,before update) {
    for(Parents__c p:trigger.new){
        if(p.country__c=='india'){
            p.fee__c=p.fee__c-10;
        }
    }
    for(parents__c p:trigger.new){
        if(p.country__c=='uk'){
            p.fee__c=p.fee__c-20;
        }
    }
    for(parents__c p:trigger.new){
        if(p.country__c=='usa'){
            p.fee__c=p.fee__c-30;
        }
    }

}