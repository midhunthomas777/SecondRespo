trigger TrforDuplicate3 on Consultant__c (before insert,before update) {
    for(consultant__c con:trigger.new){
        list<consultant__c>newlist=[select name,id from consultant__c where name=:con.name];
        if(newlist.size()>0){
            con.adderror('not allowed duplicates ');
        }
    }

}