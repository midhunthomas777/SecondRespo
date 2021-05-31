trigger ContactTri on Contact (after update) {
    
        set<id>conids=new set<id>();
        set<id>accids=new set<id>();
        for(contact c:trigger.new){
            conids.add(c.id);
            accids.add(c.accountid);
            
        }
    
    
    list<account>listup=[select id,phone,(select id,phone from contacts where id in  :conids) from account where id in: accids];
    list<account>acc=new list<account>();
    for(account a :listup){
        for(contact c:a.contacts){
            a.phone=c.phone;
                acc.add(a);
        }
    }
   update acc; 
}