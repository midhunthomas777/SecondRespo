trigger Trigger3C on Parents__c (after insert) {
    list<CHILDREN__c>listchild=new list<children__c>();
    
    
    for(parents__c c:trigger.new){
        children__c ch=new children__c();
        c.name=ch.Parent__c;
        ch.name='prithu';
        listchild.add(ch);
        
    }
insert listchild;
}