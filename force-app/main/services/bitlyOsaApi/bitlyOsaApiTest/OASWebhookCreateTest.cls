@isTest
private class OASWebhookCreateTest {
    @isTest
    private static void equalsSameInstance() {
        OASWebhookCreate webhookCreate1 = OASWebhookCreate.getExample();
        OASWebhookCreate webhookCreate2 = webhookCreate1;
        OASWebhookCreate webhookCreate3 = new OASWebhookCreate();
        OASWebhookCreate webhookCreate4 = webhookCreate3;

        System.assert(webhookCreate1.equals(webhookCreate2));
        System.assert(webhookCreate2.equals(webhookCreate1));
        System.assert(webhookCreate1.equals(webhookCreate1));
        System.assert(webhookCreate3.equals(webhookCreate4));
        System.assert(webhookCreate4.equals(webhookCreate3));
        System.assert(webhookCreate3.equals(webhookCreate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASWebhookCreate webhookCreate1 = OASWebhookCreate.getExample();
        OASWebhookCreate webhookCreate2 = OASWebhookCreate.getExample();
        OASWebhookCreate webhookCreate3 = new OASWebhookCreate();
        OASWebhookCreate webhookCreate4 = new OASWebhookCreate();

        System.assert(webhookCreate1.equals(webhookCreate2));
        System.assert(webhookCreate2.equals(webhookCreate1));
        System.assert(webhookCreate3.equals(webhookCreate4));
        System.assert(webhookCreate4.equals(webhookCreate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASWebhookCreate webhookCreate1 = OASWebhookCreate.getExample();
        OASWebhookCreate webhookCreate2 = new OASWebhookCreate();

        System.assertEquals(false, webhookCreate1.equals('foo'));
        System.assertEquals(false, webhookCreate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASWebhookCreate webhookCreate1 = OASWebhookCreate.getExample();
        OASWebhookCreate webhookCreate2 = new OASWebhookCreate();
        OASWebhookCreate webhookCreate3;

        System.assertEquals(false, webhookCreate1.equals(webhookCreate3));
        System.assertEquals(false, webhookCreate2.equals(webhookCreate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASWebhookCreate webhookCreate1 = OASWebhookCreate.getExample();
        OASWebhookCreate webhookCreate2 = new OASWebhookCreate();

        System.assertEquals(webhookCreate1.hashCode(), webhookCreate1.hashCode());
        System.assertEquals(webhookCreate2.hashCode(), webhookCreate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASWebhookCreate webhookCreate1 = OASWebhookCreate.getExample();
        OASWebhookCreate webhookCreate2 = OASWebhookCreate.getExample();
        OASWebhookCreate webhookCreate3 = new OASWebhookCreate();
        OASWebhookCreate webhookCreate4 = new OASWebhookCreate();

        System.assert(webhookCreate1.equals(webhookCreate2));
        System.assert(webhookCreate3.equals(webhookCreate4));
        System.assertEquals(webhookCreate1.hashCode(), webhookCreate2.hashCode());
        System.assertEquals(webhookCreate3.hashCode(), webhookCreate4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASWebhookCreate webhookCreate = new OASWebhookCreate();
        Map<String, String> propertymappings = webhookCreate.getPropertyMappings();
        System.assertEquals('isActive', propertymappings.get('is_active'));
        System.assertEquals('organizationGuid', propertymappings.get('organization_guid'));
        System.assertEquals('groupGuid', propertymappings.get('group_guid'));
        System.assertEquals('oauthUrl', propertymappings.get('oauth_url'));
        System.assertEquals('clientId', propertymappings.get('client_id'));
        System.assertEquals('clientSecret', propertymappings.get('client_secret'));
        System.assertEquals('fetchTags', propertymappings.get('fetch_tags'));
    }
}