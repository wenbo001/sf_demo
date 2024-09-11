@isTest
private class OASWebhookTest {
    @isTest
    private static void equalsSameInstance() {
        OASWebhook webhook1 = OASWebhook.getExample();
        OASWebhook webhook2 = webhook1;
        OASWebhook webhook3 = new OASWebhook();
        OASWebhook webhook4 = webhook3;

        System.assert(webhook1.equals(webhook2));
        System.assert(webhook2.equals(webhook1));
        System.assert(webhook1.equals(webhook1));
        System.assert(webhook3.equals(webhook4));
        System.assert(webhook4.equals(webhook3));
        System.assert(webhook3.equals(webhook3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASWebhook webhook1 = OASWebhook.getExample();
        OASWebhook webhook2 = OASWebhook.getExample();
        OASWebhook webhook3 = new OASWebhook();
        OASWebhook webhook4 = new OASWebhook();

        System.assert(webhook1.equals(webhook2));
        System.assert(webhook2.equals(webhook1));
        System.assert(webhook3.equals(webhook4));
        System.assert(webhook4.equals(webhook3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASWebhook webhook1 = OASWebhook.getExample();
        OASWebhook webhook2 = new OASWebhook();

        System.assertEquals(false, webhook1.equals('foo'));
        System.assertEquals(false, webhook2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASWebhook webhook1 = OASWebhook.getExample();
        OASWebhook webhook2 = new OASWebhook();
        OASWebhook webhook3;

        System.assertEquals(false, webhook1.equals(webhook3));
        System.assertEquals(false, webhook2.equals(webhook3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASWebhook webhook1 = OASWebhook.getExample();
        OASWebhook webhook2 = new OASWebhook();

        System.assertEquals(webhook1.hashCode(), webhook1.hashCode());
        System.assertEquals(webhook2.hashCode(), webhook2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASWebhook webhook1 = OASWebhook.getExample();
        OASWebhook webhook2 = OASWebhook.getExample();
        OASWebhook webhook3 = new OASWebhook();
        OASWebhook webhook4 = new OASWebhook();

        System.assert(webhook1.equals(webhook2));
        System.assert(webhook3.equals(webhook4));
        System.assertEquals(webhook1.hashCode(), webhook2.hashCode());
        System.assertEquals(webhook3.hashCode(), webhook4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASWebhook webhook = new OASWebhook();
        Map<String, String> propertymappings = webhook.getPropertyMappings();
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

    @isTest
    private static void defaultValuesPopulated() {
        OASWebhook webhook = new OASWebhook();
        System.assertEquals(new Map<String, String>(), webhook.references);
        System.assertEquals(null, webhook.guid);
        System.assertEquals(null, webhook.created);
        System.assertEquals(null, webhook.modified);
        System.assertEquals(null, webhook.modifiedBy);
        System.assertEquals(null, webhook.alerted);
        System.assertEquals(null, webhook.deactivated);
        System.assertEquals(null, webhook.isActive);
        System.assertEquals(null, webhook.isAlert);
        System.assertEquals(null, webhook.organizationGuid);
        System.assertEquals(null, webhook.groupGuid);
        System.assertEquals(null, webhook.name);
        System.assertEquals(null, webhook.event);
        System.assertEquals(null, webhook.url);
        System.assertEquals(null, webhook.status);
        System.assertEquals(null, webhook.oauthUrl);
        System.assertEquals(null, webhook.clientId);
        System.assertEquals(null, webhook.clientSecret);
        System.assertEquals(null, webhook.fetchTags);
    }
}