trigger Triggerfordelete6 on Consultant__c (before insert,before update ) {
    if(trigger.isinsert){
    for(consultant__c con:trigger.new){
        if( con.SkillSet__c=='salesforce'){
            con.Salary__c=7800;
        }
    }
}

if(trigger.isupdate){
    for(consultant__c con:trigger.new){
        if(con.skillset__c=='salesforce'){
            con.salary__c=9000;
        }
    }
}
}