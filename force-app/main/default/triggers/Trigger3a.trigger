trigger Trigger3a on Parents__c (before insert) {
    for(parents__c cc:trigger.new){
        if(cc.name=='Midhun'){
            (cc.PHONE_NO__c='237184');
        }
    }

}