trigger Trigger3fromS on Parents__c (before update) {
    for(parents__c p:trigger.new){
        if(p.Fee__c !=trigger.oldmap.get(p.id).fee__c){
            p.name=p.name+p.fee__c ;
        }
        update p;
            
        }
    

}