trigger PropertyTrigger on Property__c (before insert, before update) {
     system.debug('affected objects' + Trigger.New);
}