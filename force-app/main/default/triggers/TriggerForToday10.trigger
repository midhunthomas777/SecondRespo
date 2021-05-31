trigger TriggerForToday10 on STUDENT__c (before insert) {
    if(trigger.isinsert){
    for(student__c s:trigger.new){
        if(s.Adress__c ==null){
            s.Adress__c='Bristol';
        }
        }         
        }
        if(trigger.isupdate){
            for(student__c s:trigger.new){
            if(s.Adress__c==null){
                s.Adress__c='Newigton';
            }
            }
        

    }
        
}