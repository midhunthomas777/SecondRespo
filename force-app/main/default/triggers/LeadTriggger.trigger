trigger LeadTriggger on Lead (before insert ,before update) {
    if(trigger.isinsert && trigger.isupdate){
        set<id>newid=new set<id>();
        list<contact>newlist=new list<contact>();
  
        for(lead l:trigger.new){
            newid.add(l.Email);
           
            
            for(contact cc:[select email ,id from contact where email in :newid]){
            newlist.add(cc);
            if(newlist.size()>0){
                l.adderror('no');
            }
            }
                }
        
    }}