trigger TriggerForUpdate7 on New_Position__c (before update) {
    for(New_Position__c p:trigger.new){
        if( p.Position_title__c !=trigger.oldmap.get(p.id).Position_title__c){
            p.name=p.name+p.Position_title__c;
        }
    }
    

}