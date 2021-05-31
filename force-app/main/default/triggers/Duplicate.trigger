trigger Duplicate on New_Beer__c (after update) {
    list<OldBeer__c>newlist=new list<OldBeer__c>();
    for(New_Beer__c c:trigger.old){
        OldBeer__c old=new OldBeer__c ();
        old.name=c.name;
        old.Price__c=c.Price__c;
        newlist.add(old);
    }
insert newlist;
}