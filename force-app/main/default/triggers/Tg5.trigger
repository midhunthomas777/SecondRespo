trigger Tg5 on Consultant__c (before insert,before update) {
    if ( trigger.isinsert){
    for(Consultant__c cc:trigger.new){
        if(cc.SkillSet__c=='java'){
            cc.Salary__c=7800;
        }   }
    }
    
    for(consultant__c cc:trigger.new){
        if(trigger.isupdate){
        if(cc.skillset__c=='java'){
            cc.salary__c=5600;
        }
    }
}

}