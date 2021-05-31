trigger Oppupdate on Opportunity (after update) {
    if(trigger.isupdate && trigger.isafter){
        set<id>oppids=new set<id>();
        set<id>accids=new set<id>();
        for(opportunity opp:trigger.new){
            if(opp.city__c!= trigger.oldmap.get(opp.id).city__c){
                oppids.add(opp.id);
                accids.add(opp.accountid);
                
                
            }
        }
            
        
    
list<account>listacc=[select id,city__c,(select id,CITY__c from  Opportunities where id in:oppids) from account where id in:accids];
        list<account>newlist=new list<account>();
        for(account a:listacc){
            for(Opportunity opp:a.Opportunities){
                a.city__c=opp.city__c;
                newlist.add(a);
            }
        }
        update newlist;
        
        
       
    }}