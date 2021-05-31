trigger PreventDuplicate on CIROC__c (before insert) {
    for(ciroc__c c:trigger.new){
        list<ciroc__c>cc =[select name ,id from ciroc__c where name  =:c.name];
        if(cc.size()>0){
            
            c.adderror('duplicate');
        }
    }

}