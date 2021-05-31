trigger PracticeTrigger45 on GreyGoose__c (after insert) {
    list<Orange__c>o=new list<Orange__c>();
  for(greygoose__c  c:trigger.old){
      Orange__c orange=new Orange__c ();
      c.id=orange.id;
      
      
     
      c.PHONE_NO__c=orange.PHONE_NO__c;
      o.add(orange);
        
        
    }
insert o;
}