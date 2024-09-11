@isTest
private class OASWebhooksTest {
    @isTest
    private static void equalsSameInstance() {
        OASWebhooks webhooks1 = OASWebhooks.getExample();
        OASWebhooks webhooks2 = webhooks1;
        OASWebhooks webhooks3 = new OASWebhooks();
        OASWebhooks webhooks4 = webhooks3;

        System.assert(webhooks1.equals(webhooks2));
        System.assert(webhooks2.equals(webhooks1));
        System.assert(webhooks1.equals(webhooks1));
        System.assert(webhooks3.equals(webhooks4));
        System.assert(webhooks4.equals(webhooks3));
        System.assert(webhooks3.equals(webhooks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASWebhooks webhooks1 = OASWebhooks.getExample();
        OASWebhooks webhooks2 = OASWebhooks.getExample();
        OASWebhooks webhooks3 = new OASWebhooks();
        OASWebhooks webhooks4 = new OASWebhooks();

        System.assert(webhooks1.equals(webhooks2));
        System.assert(webhooks2.equals(webhooks1));
        System.assert(webhooks3.equals(webhooks4));
        System.assert(webhooks4.equals(webhooks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASWebhooks webhooks1 = OASWebhooks.getExample();
        OASWebhooks webhooks2 = new OASWebhooks();

        System.assertEquals(false, webhooks1.equals('foo'));
        System.assertEquals(false, webhooks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASWebhooks webhooks1 = OASWebhooks.getExample();
        OASWebhooks webhooks2 = new OASWebhooks();
        OASWebhooks webhooks3;

        System.assertEquals(false, webhooks1.equals(webhooks3));
        System.assertEquals(false, webhooks2.equals(webhooks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASWebhooks webhooks1 = OASWebhooks.getExample();
        OASWebhooks webhooks2 = new OASWebhooks();

        System.assertEquals(webhooks1.hashCode(), webhooks1.hashCode());
        System.assertEquals(webhooks2.hashCode(), webhooks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASWebhooks webhooks1 = OASWebhooks.getExample();
        OASWebhooks webhooks2 = OASWebhooks.getExample();
        OASWebhooks webhooks3 = new OASWebhooks();
        OASWebhooks webhooks4 = new OASWebhooks();

        System.assert(webhooks1.equals(webhooks2));
        System.assert(webhooks3.equals(webhooks4));
        System.assertEquals(webhooks1.hashCode(), webhooks2.hashCode());
        System.assertEquals(webhooks3.hashCode(), webhooks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASWebhooks webhooks = new OASWebhooks();
        System.assertEquals(new List<OASWebhook>(), webhooks.webhooks);
    }
}