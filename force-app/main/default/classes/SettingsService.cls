/**
 * Created by wenboliu on 05/09/2024.
 */

public inherited sharing class SettingsService {
    /**
    * @description Retrieve value from the Settings__c custom settings
    * @param name of the custom setting
    * @return value String of the custom setting
    */
    public static String getValueFromSettings(String name){
        return newInstance().getValueFromSettings(name);
    }

    /**
     * @description Upsert setting records
     * @param settingsMap a map of setting api name and setting value
     *
     * @return the list of settings inserted/updated
     */
    public static List<Setting__c> upsertSettings(Map<String, String> settingsMap) {
        return newInstance().upsertSettings(settingsMap);
    }

    public static List<Google_Config__mdt> saveGoogleConfigs(List<Google_Config__mdt> googleConfigs) {
        return newInstance().saveGoogleConfigs(googleConfigs);
    }

    private static ISettingsService newInstance() {
        return (ISettingsService) Application.Service.newInstance(ISettingsService.class);
    }

}