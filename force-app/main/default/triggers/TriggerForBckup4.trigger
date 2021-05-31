trigger TriggerForBckup4 on Faculty__c (after insert,after update) {
    list<Fac_Backup__c>fbf=new list<Fac_Backup__c>();
   
   
    for(Faculty__c f:trigger.old){
        Fac_Backup__c fb=new Fac_Backup__c();
        fb.EMAIL_ID__c=f.EMAIL_ID__c;
        fb.Experience__c=f.Experience__c;
        fb.Name=f.Name;
        fbf.add(fb);
        
            
          
        
        
        
       
        
        
            }
    insert fbf;
}