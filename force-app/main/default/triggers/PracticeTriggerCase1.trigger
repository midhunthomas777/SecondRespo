trigger PracticeTriggerCase1 on Case (before insert) {
    for(case c:trigger.new){
        if(c.reason=='Breakdown'){
            c.Priority='high';
        }
    }

}