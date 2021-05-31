//Prevent account from deleting when having two or accosciated contact

trigger CONTACTTRIGGGER2 on Account (before delete) {
    set<id>accids=new set<id>();
    for(account a:trigger.old){
        accids.add(a.id);
        
    }
    

}