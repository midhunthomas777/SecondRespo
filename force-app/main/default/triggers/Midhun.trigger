trigger Midhun on CIROC__c (before insert) {
    FOR(CIROC__c C:TRIGGER.NEW){
        if(c.Price__c==null){
            c.Price__c=56;
        }
    }

}