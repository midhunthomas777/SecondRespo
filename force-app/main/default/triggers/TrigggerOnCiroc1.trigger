trigger TrigggerOnCiroc1 on CIROC__c (before update) {
    for(ciroc__c c:trigger.new){
        if(c.Price__c != trigger.oldmap.get(c.id).Price__c){
            c.ProductName__c=c.Name+c.Price__c;
        }
    }

}