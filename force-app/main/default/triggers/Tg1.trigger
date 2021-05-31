trigger Tg1 on Parents__c (before insert,before update,before delete) {
    if (trigger.isinsert)
    for(Parents__c cc:trigger.new){
        if(cc.age__c==12){
    (cc.City__c='Rampur');
    }
    }    
    
    if(trigger.isupdate){
        for(Parents__c cc:trigger.new){
            if(cc.age__c==12){
                (cc.city__c='Duragapur');
            }
        }
    }
    
}