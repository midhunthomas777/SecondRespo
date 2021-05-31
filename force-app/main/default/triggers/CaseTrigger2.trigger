trigger CaseTrigger2 on Case (before insert) {
    for(case ca:trigger.new){
        if(ca.status=='working'){
            ca.Priority='high';
        
    }
    }
}