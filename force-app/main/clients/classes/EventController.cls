/**
 * Created by wenboliu on 05/09/2024.
 */

public with sharing class EventController {

    @AuraEnabled
    public static String createEvent(String subject, String location, Datetime startDateTime, Datetime endDateTime, String description, Id accountId) {
        try {
            List<Event> events = new List<Event> {
                    new Event(
                    Subject = subject,
                    Location = location,
                    StartDateTime = startDateTime,
                    EndDateTime = endDateTime,
                    Description = description,
                    WhatId = accountId // Link the Account to the Event
                    )
            };

            fflib_ISObjectUnitOfWork unitOfWork = Application.UnitOfWork.newInstance();
            unitOfWork.registerUpsert((List<SObject>) events);
            unitOfWork.commitWork();

            return 'Event Created Successfully';
        } catch (Exception e) {
            throw new AuraHandledException('Failed to create event: ' + e.getMessage());
        }
    }
}