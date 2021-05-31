trigger Trg3 on Parents__c (before insert,before update) {
    for(parents__c s:trigger.new){
        if(s.gender__c=='male'){
            s.name='Mr '+s.name;
        }
        if(s.gender__c=='female'){
            s.name='Mrs '+s.name;
        }
    }
    
    

}