@isTest
private class OASAnnualRenewalReminderRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASAnnualRenewalReminderRequest annualRenewalReminderRequest1 = OASAnnualRenewalReminderRequest.getExample();
        OASAnnualRenewalReminderRequest annualRenewalReminderRequest2 = annualRenewalReminderRequest1;
        OASAnnualRenewalReminderRequest annualRenewalReminderRequest3 = new OASAnnualRenewalReminderRequest();
        OASAnnualRenewalReminderRequest annualRenewalReminderRequest4 = annualRenewalReminderRequest3;

        System.assert(annualRenewalReminderRequest1.equals(annualRenewalReminderRequest2));
        System.assert(annualRenewalReminderRequest2.equals(annualRenewalReminderRequest1));
        System.assert(annualRenewalReminderRequest1.equals(annualRenewalReminderRequest1));
        System.assert(annualRenewalReminderRequest3.equals(annualRenewalReminderRequest4));
        System.assert(annualRenewalReminderRequest4.equals(annualRenewalReminderRequest3));
        System.assert(annualRenewalReminderRequest3.equals(annualRenewalReminderRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAnnualRenewalReminderRequest annualRenewalReminderRequest1 = OASAnnualRenewalReminderRequest.getExample();
        OASAnnualRenewalReminderRequest annualRenewalReminderRequest2 = OASAnnualRenewalReminderRequest.getExample();
        OASAnnualRenewalReminderRequest annualRenewalReminderRequest3 = new OASAnnualRenewalReminderRequest();
        OASAnnualRenewalReminderRequest annualRenewalReminderRequest4 = new OASAnnualRenewalReminderRequest();

        System.assert(annualRenewalReminderRequest1.equals(annualRenewalReminderRequest2));
        System.assert(annualRenewalReminderRequest2.equals(annualRenewalReminderRequest1));
        System.assert(annualRenewalReminderRequest3.equals(annualRenewalReminderRequest4));
        System.assert(annualRenewalReminderRequest4.equals(annualRenewalReminderRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAnnualRenewalReminderRequest annualRenewalReminderRequest1 = OASAnnualRenewalReminderRequest.getExample();
        OASAnnualRenewalReminderRequest annualRenewalReminderRequest2 = new OASAnnualRenewalReminderRequest();

        System.assertEquals(false, annualRenewalReminderRequest1.equals('foo'));
        System.assertEquals(false, annualRenewalReminderRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAnnualRenewalReminderRequest annualRenewalReminderRequest1 = OASAnnualRenewalReminderRequest.getExample();
        OASAnnualRenewalReminderRequest annualRenewalReminderRequest2 = new OASAnnualRenewalReminderRequest();
        OASAnnualRenewalReminderRequest annualRenewalReminderRequest3;

        System.assertEquals(false, annualRenewalReminderRequest1.equals(annualRenewalReminderRequest3));
        System.assertEquals(false, annualRenewalReminderRequest2.equals(annualRenewalReminderRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAnnualRenewalReminderRequest annualRenewalReminderRequest1 = OASAnnualRenewalReminderRequest.getExample();
        OASAnnualRenewalReminderRequest annualRenewalReminderRequest2 = new OASAnnualRenewalReminderRequest();

        System.assertEquals(annualRenewalReminderRequest1.hashCode(), annualRenewalReminderRequest1.hashCode());
        System.assertEquals(annualRenewalReminderRequest2.hashCode(), annualRenewalReminderRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAnnualRenewalReminderRequest annualRenewalReminderRequest1 = OASAnnualRenewalReminderRequest.getExample();
        OASAnnualRenewalReminderRequest annualRenewalReminderRequest2 = OASAnnualRenewalReminderRequest.getExample();
        OASAnnualRenewalReminderRequest annualRenewalReminderRequest3 = new OASAnnualRenewalReminderRequest();
        OASAnnualRenewalReminderRequest annualRenewalReminderRequest4 = new OASAnnualRenewalReminderRequest();

        System.assert(annualRenewalReminderRequest1.equals(annualRenewalReminderRequest2));
        System.assert(annualRenewalReminderRequest3.equals(annualRenewalReminderRequest4));
        System.assertEquals(annualRenewalReminderRequest1.hashCode(), annualRenewalReminderRequest2.hashCode());
        System.assertEquals(annualRenewalReminderRequest3.hashCode(), annualRenewalReminderRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASAnnualRenewalReminderRequest annualRenewalReminderRequest = new OASAnnualRenewalReminderRequest();
        Map<String, String> propertymappings = annualRenewalReminderRequest.getPropertyMappings();
        System.assertEquals('subscriptionID', propertymappings.get('subscription_ID'));
        System.assertEquals('orgGuid', propertymappings.get('org_guid'));
    }
}