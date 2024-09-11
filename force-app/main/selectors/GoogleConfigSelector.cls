/**
 * Created by wenboliu on 10/09/2024.
 */

public inherited sharing class GoogleConfigSelector extends fflib_SObjectSelector implements IGoogleConfigSelector {
    public static IGoogleConfigSelector newInstance() {
        return (IGoogleConfigSelector) Application.Selector.newInstance(Google_Config__mdt.SObjectType);
    }

    public List<Schema.SObjectField> getSObjectFieldList() {
        return new List<Schema.SObjectField>{
                Google_Config__mdt.DeveloperName,
                Google_Config__mdt.MasterLabel,
                Google_Config__mdt.client_id__c,
                Google_Config__mdt.access_token__c,
                Google_Config__mdt.client_secret__c,
                Google_Config__mdt.auth_url__c,
                Google_Config__mdt.Base_Url__c,
                Google_Config__mdt.token_url__c,
                Google_Config__mdt.scope__c,
                Google_Config__mdt.expires_in_seconds__c,
                Google_Config__mdt.expires_in_time__c,
                Google_Config__mdt.PageName__c,
                Google_Config__mdt.refresh_token__c,
                Google_Config__mdt.redirct_url__c,
                Google_Config__mdt.QualifiedApiName,
                Google_Config__mdt.Event_Url__c
        };
    }

    public Schema.SObjectType getSObjectType() {
        return Google_Config__mdt.SObjectType;
    }

    public List<Google_Config__mdt> selectByDeveloperName(String developerName, Boolean enforceFLS) {
        fflib_QueryFactory queryFactory = newQueryFactory();
        List<Google_Config__mdt> result = new List<Google_Config__mdt>();
        queryFactory.setCondition('DeveloperName =:developerName');
        queryFactory.setEnforceFLS(enforceFLS);
        result = Database.query(queryFactory.toSOQL());
        return result;
    }
}