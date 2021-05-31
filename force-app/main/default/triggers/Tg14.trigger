trigger Tg14 on Parents__c (before insert,before update) {
    for(parents__c p:trigger.new){
       list<parents__c>pa=[select id,name from parents__c where name=:p.name];
        if(pa.size()>0){
        (p.adderror('there is a dup;icate record'));
        }    }

}