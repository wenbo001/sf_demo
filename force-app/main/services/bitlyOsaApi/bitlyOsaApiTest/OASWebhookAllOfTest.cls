@isTest
private class OASWebhookAllOfTest {
    @isTest
    private static void equalsSameInstance() {
        OASWebhookAllOf webhookAllOf1 = OASWebhookAllOf.getExample();
        OASWebhookAllOf webhookAllOf2 = webhookAllOf1;
        OASWebhookAllOf webhookAllOf3 = new OASWebhookAllOf();
        OASWebhookAllOf webhookAllOf4 = webhookAllOf3;

        System.assert(webhookAllOf1.equals(webhookAllOf2));
        System.assert(webhookAllOf2.equals(webhookAllOf1));
        System.assert(webhookAllOf1.equals(webhookAllOf1));
        System.assert(webhookAllOf3.equals(webhookAllOf4));
        System.assert(webhookAllOf4.equals(webhookAllOf3));
        System.assert(webhookAllOf3.equals(webhookAllOf3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASWebhookAllOf webhookAllOf1 = OASWebhookAllOf.getExample();
        OASWebhookAllOf webhookAllOf2 = OASWebhookAllOf.getExample();
        OASWebhookAllOf webhookAllOf3 = new OASWebhookAllOf();
        OASWebhookAllOf webhookAllOf4 = new OASWebhookAllOf();

        System.assert(webhookAllOf1.equals(webhookAllOf2));
        System.assert(webhookAllOf2.equals(webhookAllOf1));
        System.assert(webhookAllOf3.equals(webhookAllOf4));
        System.assert(webhookAllOf4.equals(webhookAllOf3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASWebhookAllOf webhookAllOf1 = OASWebhookAllOf.getExample();
        OASWebhookAllOf webhookAllOf2 = new OASWebhookAllOf();

        System.assertEquals(false, webhookAllOf1.equals('foo'));
        System.assertEquals(false, webhookAllOf2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASWebhookAllOf webhookAllOf1 = OASWebhookAllOf.getExample();
        OASWebhookAllOf webhookAllOf2 = new OASWebhookAllOf();
        OASWebhookAllOf webhookAllOf3;

        System.assertEquals(false, webhookAllOf1.equals(webhookAllOf3));
        System.assertEquals(false, webhookAllOf2.equals(webhookAllOf3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASWebhookAllOf webhookAllOf1 = OASWebhookAllOf.getExample();
        OASWebhookAllOf webhookAllOf2 = new OASWebhookAllOf();

        System.assertEquals(webhookAllOf1.hashCode(), webhookAllOf1.hashCode());
        System.assertEquals(webhookAllOf2.hashCode(), webhookAllOf2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASWebhookAllOf webhookAllOf1 = OASWebhookAllOf.getExample();
        OASWebhookAllOf webhookAllOf2 = OASWebhookAllOf.getExample();
        OASWebhookAllOf webhookAllOf3 = new OASWebhookAllOf();
        OASWebhookAllOf webhookAllOf4 = new OASWebhookAllOf();

        System.assert(webhookAllOf1.equals(webhookAllOf2));
        System.assert(webhookAllOf3.equals(webhookAllOf4));
        System.assertEquals(webhookAllOf1.hashCode(), webhookAllOf2.hashCode());
        System.assertEquals(webhookAllOf3.hashCode(), webhookAllOf4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASWebhookAllOf webhookAllOf = new OASWebhookAllOf();
        Map<String, String> propertymappings = webhookAllOf.getPropertyMappings();
        System.assertEquals('modifiedBy', propertymappings.get('modified_by'));
        System.assertEquals('isActive', propertymappings.get('is_active'));
        System.assertEquals('isAlert', propertymappings.get('is_alert'));
        System.assertEquals('organizationGuid', propertymappings.get('organization_guid'));
        System.assertEquals('groupGuid', propertymappings.get('group_guid'));
        System.assertEquals('oauthUrl', propertymappings.get('oauth_url'));
        System.assertEquals('clientId', propertymappings.get('client_id'));
        System.assertEquals('clientSecret', propertymappings.get('client_secret'));
        System.assertEquals('fetchTags', propertymappings.get('fetch_tags'));
    }
}