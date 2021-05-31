trigger ProgramForDeVLOPER on Boss__c (before update) {
    list<Worker__c>listofwork=new list<Worker__c>();
    for(boss__c b:trigger.new){
      
        Worker__c w=new Worker__c ();
        b.Id=w.Id;
        b.Name=w.BossName__c;
      
        w.Name='mummum';
        listofwork.add(w);
    }
insert listofwork;
}