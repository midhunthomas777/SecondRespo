trigger TriggerPractice9e on Employee__c (before update) {
    for(Employee__c e:trigger.new){
        if(e.age__c !=trigger.oldmap.get(e.id).age__c){
            e.name=e.name+e.age__c;
        }
    }

}