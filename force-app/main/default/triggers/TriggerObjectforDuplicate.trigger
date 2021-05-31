trigger TriggerObjectforDuplicate on Parents__c (before insert,before update) {
    for(parents__c p:trigger.new){
        if(p.name!=null){
            list<parents__c>old=[select name ,id from parents__c where name =:p.name];
            if(old.size()>0){
                p.adderror('duplicate record');

            }
            
            
        }

    
    }

}