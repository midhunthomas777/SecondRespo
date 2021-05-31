trigger RemoveOldReccord on Employee__c (after update) {
    list<id>empid=new list<id>();
    for(Employee__c e:trigger.new){
        if(e.Department__c !=trigger.oldmap.get(e.id).department__c)
            empid.add(e.id);
        system.debug('Empid='+empid);
            
    }

}