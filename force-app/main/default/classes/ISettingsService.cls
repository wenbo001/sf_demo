/**
 * Created by wenboliu on 05/09/2024.
 */

public interface ISettingsService {
    /**
    * @description Retrieve value from the Settings__c custom settings
    * @param name of the custom setting
    * @return value String of the custom setting
    */
    String getValueFromSettings(String name);

    /**
     * @description Upsert setting records
     * @param settingsMap a map of setting api name and setting value
     *
     * @return the list of settings inserted/updated
     */
    List<Setting__c> upsertSettings(Map<String, String> settingsMap);

    List<Google_Config__mdt> saveGoogleConfigs(List<Google_Config__mdt> googleConfigs);
}