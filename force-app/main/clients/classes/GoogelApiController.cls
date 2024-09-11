//for apex page
public with sharing class GoogelApiController {
    public String authCode { get; set; }
    public String accessToken { get; set; }

    public List<Google_Config__mdt> getGoogleConfigs(String developerName) {
        List<Google_Config__mdt> googleConfigs = new List<Google_Config__mdt>();
        try {
            googleConfigs = GoogleConfigSelector.newInstance().selectByDeveloperName(developerName, true);
        } catch (Exception ex) {
            ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR, 'Error: ' + ex.getMessage()));
        }
        return googleConfigs;
    }

    public PageReference getAuthCode(){
        List<Google_Config__mdt> googleConfigs = getGoogleConfigs(Constant.GOOGLE_CONFIG_NAME);
        if (googleConfigs.size() > 0 && googleConfigs[0] != null) {
            //todo check value null
            return new OAuth2AuthenticationServiceImpl().initiate(googleConfigs[0].auth_url__c, googleConfigs[0].client_id__c, googleConfigs[0].redirct_url__c, googleConfigs[0].scope__c, '');
        } else {
            return null;
        }
    }

    public PageReference getAccessToken() {
//        PageReference pageRef = ApexPages.currentPage();
        System.debug('authCode::' + authCode);
        Map<String, Object> response = new Map<String, Object>();
        List<Google_Config__mdt> googleConfigs = getGoogleConfigs(Constant.GOOGLE_CONFIG_NAME);
        String accessToken;
        try {
            if (googleConfigs.size() > 0 && googleConfigs[0] != null) {
                //todo check null value
                accessToken = new OAuth2AuthenticationServiceImpl().getAccessToken(
                        googleConfigs[0].token_url__c,
                        googleConfigs[0].client_id__c,
                        googleConfigs[0].client_secret__c,
                        authCode,
                        googleConfigs[0].redirct_url__c,
                        ''
                );
                response.put('accessToken', accessToken);
            }
            response.put('success', true);
            System.debug('access token' + accessToken);
            googleConfigs[0].access_token__c = accessToken;
            SettingsService.saveGoogleConfigs(googleConfigs);
            System.debug('googleConfigs' + googleConfigs);
            // Show a success message
            ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.CONFIRM, 'Google Config Saved Successfully.'));
        } catch (Exception e) {
            response.put('success', false);
            response.put('errorMessage', e.getMessage());
            ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR, 'Error: ' + e.getMessage()));
        }
        return null;
    }

}