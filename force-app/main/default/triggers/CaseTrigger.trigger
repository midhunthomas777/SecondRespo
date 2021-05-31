trigger CaseTrigger on Case (before update) {
    for(case c:trigger.new){
        if(c.status=='working'){
            c.ownerid=c.lastmodifiedbyid;
        }
        
    }
}