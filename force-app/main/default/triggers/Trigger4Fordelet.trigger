trigger Trigger4Fordelet on STUDENT__c (before insert,before update) {
    for(student__c st:trigger.new){
        if(st.Adress__c==null){
    st.adderror('adress cannot be emoty');
        }   }
}