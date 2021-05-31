trigger TriggerOnfACULTY on Faculty__c (before insert,before update) {
    for(faculty__c f:trigger.new){
        system.debug('Trigger new  >'+trigger.new);
        f.name='dr '+f.name;
        system.debug('Trigger.new >'+trigger.new);
    }

}