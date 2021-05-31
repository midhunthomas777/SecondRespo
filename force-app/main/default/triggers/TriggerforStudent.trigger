trigger TriggerforStudent on STUDENT__c (before insert,before update) {
    if(trigger.isinsert){
        for (student__c stu:trigger.new){
            if(stu.Adress__c==null){
                stu.Adress__c='ct';
            }
        }
    }
    if(trigger.isupdate){
        for (student__c stu:trigger.new){
            if(stu.Adress__c=='null'){
                stu.Adress__c='delhi';
            }
        }
    }    

}