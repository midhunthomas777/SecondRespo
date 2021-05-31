trigger DuplicateData on Project__c (before insert,before update) {
    
    for(project__c p:trigger.new){
        list<project__c>pro=[select name ,id from project__c where name=:p.name];
        if(pro.size()>0){
            p.adderror('duplicate id');
        }
    }

}