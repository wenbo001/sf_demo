/**
 * Created by wenboliu on 29/08/2024.
 */

global inherited sharing class BitlyShortenLinkInvocable {
    global inherited sharing class Argument {
        @InvocableVariable(
                Label='Long URL'
                Description='The url to be shorten'
                Required=true)
        global String long_url;

        @InvocableVariable(
                Label='Domain'
                Description='The domain for shorten the url'
                Required=true)
        global String domain = 'bit.ly';

        @InvocableVariable(
                Label='Group id'
                Description='The group id for shorten the url'
                Required=true)
        global String group_guid = 'Bo8nb7KUMWA';

        @InvocableVariable(
                Label='Record ID'
                Description='The ID of the Record'
                )
        global String recordId;

        global Argument(String long_url, String domain, String group_guid, String recordId){
            this.long_url = long_url;
            this.domain = domain;
            this.group_guid = group_guid;
            this.recordId = recordId;
        }
        //For use in flow, otherwise flow throw error
        global Argument(){
        }
    }

    @InvocableMethod(
            Label='Short Link with Bitly'
            Description='Get shorten link from Bitly'
            Category='Bitly')
    global static List<String> getShortenLink(List<Argument> arguments) {
        try {
            List<String>shortenURLs = new List<String>();
            List<Course__c> cL = new List<Course__c>();
            for (Argument argument : arguments){
                if (Argument.long_url != null){
                    String shortenURL = OASBitlyService.getShortenURL(argument.long_url, argument.domain, argument.group_guid).link;
                    Course__c c = new Course__c();
                    c.Short_URL__c = shortenURL;
                    if(string.isNotEmpty(argument.recordId)){
                        c.id = argument.recordId;
                    }
                    shortenURLs.add(shortenURL);
                    cL.add(c);
                } else {
                    //todo throw error;
                }
            }
            fflib_ISObjectUnitOfWork unitOfWork = Application.UnitOfWork.newInstance();
            unitOfWork.registerUpsert((List<SObject>) cL);
            unitOfWork.commitWork();
            return shortenURLs;
        } catch (Exception ex) {
            throw ex;
        }
    }
}