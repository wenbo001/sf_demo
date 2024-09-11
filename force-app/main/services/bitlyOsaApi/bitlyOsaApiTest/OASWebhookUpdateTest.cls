@isTest
private class OASWebhookUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASWebhookUpdate webhookUpdate1 = OASWebhookUpdate.getExample();
        OASWebhookUpdate webhookUpdate2 = webhookUpdate1;
        OASWebhookUpdate webhookUpdate3 = new OASWebhookUpdate();
        OASWebhookUpdate webhookUpdate4 = webhookUpdate3;

        System.assert(webhookUpdate1.equals(webhookUpdate2));
        System.assert(webhookUpdate2.equals(webhookUpdate1));
        System.assert(webhookUpdate1.equals(webhookUpdate1));
        System.assert(webhookUpdate3.equals(webhookUpdate4));
        System.assert(webhookUpdate4.equals(webhookUpdate3));
        System.assert(webhookUpdate3.equals(webhookUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASWebhookUpdate webhookUpdate1 = OASWebhookUpdate.getExample();
        OASWebhookUpdate webhookUpdate2 = OASWebhookUpdate.getExample();
        OASWebhookUpdate webhookUpdate3 = new OASWebhookUpdate();
        OASWebhookUpdate webhookUpdate4 = new OASWebhookUpdate();

        System.assert(webhookUpdate1.equals(webhookUpdate2));
        System.assert(webhookUpdate2.equals(webhookUpdate1));
        System.assert(webhookUpdate3.equals(webhookUpdate4));
        System.assert(webhookUpdate4.equals(webhookUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASWebhookUpdate webhookUpdate1 = OASWebhookUpdate.getExample();
        OASWebhookUpdate webhookUpdate2 = new OASWebhookUpdate();

        System.assertEquals(false, webhookUpdate1.equals('foo'));
        System.assertEquals(false, webhookUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASWebhookUpdate webhookUpdate1 = OASWebhookUpdate.getExample();
        OASWebhookUpdate webhookUpdate2 = new OASWebhookUpdate();
        OASWebhookUpdate webhookUpdate3;

        System.assertEquals(false, webhookUpdate1.equals(webhookUpdate3));
        System.assertEquals(false, webhookUpdate2.equals(webhookUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASWebhookUpdate webhookUpdate1 = OASWebhookUpdate.getExample();
        OASWebhookUpdate webhookUpdate2 = new OASWebhookUpdate();

        System.assertEquals(webhookUpdate1.hashCode(), webhookUpdate1.hashCode());
        System.assertEquals(webhookUpdate2.hashCode(), webhookUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASWebhookUpdate webhookUpdate1 = OASWebhookUpdate.getExample();
        OASWebhookUpdate webhookUpdate2 = OASWebhookUpdate.getExample();
        OASWebhookUpdate webhookUpdate3 = new OASWebhookUpdate();
        OASWebhookUpdate webhookUpdate4 = new OASWebhookUpdate();

        System.assert(webhookUpdate1.equals(webhookUpdate2));
        System.assert(webhookUpdate3.equals(webhookUpdate4));
        System.assertEquals(webhookUpdate1.hashCode(), webhookUpdate2.hashCode());
        System.assertEquals(webhookUpdate3.hashCode(), webhookUpdate4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASWebhookUpdate webhookUpdate = new OASWebhookUpdate();
        Map<String, String> propertymappings = webhookUpdate.getPropertyMappings();
        System.assertEquals('isActive', propertymappings.get('is_active'));
        System.assertEquals('organizationGuid', propertymappings.get('organization_guid'));
        System.assertEquals('groupGuid', propertymappings.get('group_guid'));
        System.assertEquals('oauthUrl', propertymappings.get('oauth_url'));
        System.assertEquals('clientId', propertymappings.get('client_id'));
        System.assertEquals('clientSecret', propertymappings.get('client_secret'));
        System.assertEquals('fetchTags', propertymappings.get('fetch_tags'));
    }
}