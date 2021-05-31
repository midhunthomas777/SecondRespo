trigger TRIGGER8A on Project__c (before insert,before update){
    list<string>newlist=new list<string>();
    for(project__c p:trigger.new){
        newlist.add(p.Name);
    }
    list<Project__c>pa=[select id,Name from Project__c where Name in: newlist];
    if(pa.size()>0){
        delete pa;
    }
       
       
    
   
        
            
           
        }