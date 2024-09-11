/**
 * Created by wenboliu on 05/09/2024.
 */

trigger EventTrigger on Event (after delete, after insert, after update, after undelete, before delete, before insert, before update) {
    fflib_SObjectDomain.triggerHandler(EventDomain.class);
}