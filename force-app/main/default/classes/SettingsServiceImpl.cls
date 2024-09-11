/**
 * Created by wenboliu on 05/09/2024.
 */

public inherited sharing class SettingsServiceImpl implements ISettingsService{
    public String getValueFromSettings(String name) {
        return Setting__c.getInstance(name)?.Value__c;
    }

    public List<Setting__c> upsertSettings(Map<String, String> settingsMap) {
        fflib_ISObjectUnitOfWork uow = Application.UnitOfWork.newInstance();
        List<Setting__c> settings = new List<Setting__c>();

        for(String settingName : settingsMap.keySet()) {
            Setting__c setting = Setting__c.getInstance(settingName);

            if(setting == null) {
                setting = new Setting__c(Name = settingName);
            }
            setting.Value__c = settingsMap.get(settingName);
            settings.add(setting);
        }

        uow.registerUpsert(settings);
        uow.commitWork();

        return settings;
    }

    public List<Google_Config__mdt> saveGoogleConfigs(List<Google_Config__mdt> googleConfigs) {
        ICustomMetadataUnitOfWork cmdUnitOfWork = Application.CustomMetadataUnitOfWork.newInstance(new GoogleConfigCmdInsertCallback(googleConfigs));
        cmdUnitOfWork.register(googleConfigs);
        cmdUnitOfWork.commitWork();
        return googleConfigs;
    }

    private class GoogleConfigCmdInsertCallback implements Metadata.DeployCallback {
        private List<Google_Config__mdt> googleConfigs = new List<Google_Config__mdt>();
        public GoogleConfigCmdInsertCallback(List<Google_Config__mdt> googleConfigs) {
            this.googleConfigs = googleConfigs;
        }
        public void handleResult(Metadata.DeployResult result, Metadata.DeployCallbackContext context) {
            Boolean success = result.success;
            String errorMessage = result.errorMessage;
            if (!success) {
               System.debug('MDT google config save failed::' + errorMessage);
            }
        }
    }
}