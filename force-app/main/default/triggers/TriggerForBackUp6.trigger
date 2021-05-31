trigger TriggerForBackUp6 on Faculty__c (before update) {
    list<Fac_Backup__c> facnew=new list<Fac_Backup__c>();
    for(faculty__c fb:trigger.new){
        Fac_Backup__c fbc=new Fac_Backup__c();
        fbc.EMAIL_ID__c=fb.EMAIL_ID__c;
            fbc.name=fb.Name;
        facnew.add(fbc);
        
        
    }
insert facnew;
}