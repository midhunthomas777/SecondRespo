trigger backup2 on CIROC__c (before update ) {
    list<ciroc1__c>cir=new list<ciroc1__c>();
    for(ciroc__c cc:trigger.new){
        ciroc1__c cd=new ciroc1__c();
        cd.Price__c=cc.Price__c;
        cir.add(cd);
        
        
        
    }
    insert cir;

}