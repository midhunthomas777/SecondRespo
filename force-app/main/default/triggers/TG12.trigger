trigger TG12 on Parents__c (before delete) {
    for(parents__c p:trigger.old){
        p.Name='midhun';
        p.adderror('you canot delete this');
    }

}