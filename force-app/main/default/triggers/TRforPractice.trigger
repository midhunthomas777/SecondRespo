trigger TRforPractice on STUDENT__c (before insert,before update) {
    if(trigger.isinsert){
        for(student__c st:trigger.new){
            if(st.gender__c=='male')
                st.name='Mr '+ST.NAME ;
            if(st.gender__c=='female'){
                st.name='Mrs '+st.name ;
            }
        }
    }

}