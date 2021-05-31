trigger Ptactice3Trigeer on Faculty__c (before update) {
   
    list<Fac_Backup__c>fbc=new list<Fac_Backup__c>();
    for(faculty__c fa:trigger.new){
        Fac_Backup__c fb=new Fac_Backup__c();
        fb.Experience__c=fa.Experience__c;
        fb.EMAIL_ID__c=fa.EMAIL_ID__c;
        fbc.add(fb);
        system.debug('trigger.new>=='+trigger.new);
        
    }
    insert fbc;

}