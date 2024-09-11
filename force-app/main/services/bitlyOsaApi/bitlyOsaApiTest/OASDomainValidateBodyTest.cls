@isTest
private class OASDomainValidateBodyTest {
    @isTest
    private static void equalsSameInstance() {
        OASDomainValidateBody domainValidateBody1 = OASDomainValidateBody.getExample();
        OASDomainValidateBody domainValidateBody2 = domainValidateBody1;
        OASDomainValidateBody domainValidateBody3 = new OASDomainValidateBody();
        OASDomainValidateBody domainValidateBody4 = domainValidateBody3;

        System.assert(domainValidateBody1.equals(domainValidateBody2));
        System.assert(domainValidateBody2.equals(domainValidateBody1));
        System.assert(domainValidateBody1.equals(domainValidateBody1));
        System.assert(domainValidateBody3.equals(domainValidateBody4));
        System.assert(domainValidateBody4.equals(domainValidateBody3));
        System.assert(domainValidateBody3.equals(domainValidateBody3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDomainValidateBody domainValidateBody1 = OASDomainValidateBody.getExample();
        OASDomainValidateBody domainValidateBody2 = OASDomainValidateBody.getExample();
        OASDomainValidateBody domainValidateBody3 = new OASDomainValidateBody();
        OASDomainValidateBody domainValidateBody4 = new OASDomainValidateBody();

        System.assert(domainValidateBody1.equals(domainValidateBody2));
        System.assert(domainValidateBody2.equals(domainValidateBody1));
        System.assert(domainValidateBody3.equals(domainValidateBody4));
        System.assert(domainValidateBody4.equals(domainValidateBody3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDomainValidateBody domainValidateBody1 = OASDomainValidateBody.getExample();
        OASDomainValidateBody domainValidateBody2 = new OASDomainValidateBody();

        System.assertEquals(false, domainValidateBody1.equals('foo'));
        System.assertEquals(false, domainValidateBody2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDomainValidateBody domainValidateBody1 = OASDomainValidateBody.getExample();
        OASDomainValidateBody domainValidateBody2 = new OASDomainValidateBody();
        OASDomainValidateBody domainValidateBody3;

        System.assertEquals(false, domainValidateBody1.equals(domainValidateBody3));
        System.assertEquals(false, domainValidateBody2.equals(domainValidateBody3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDomainValidateBody domainValidateBody1 = OASDomainValidateBody.getExample();
        OASDomainValidateBody domainValidateBody2 = new OASDomainValidateBody();

        System.assertEquals(domainValidateBody1.hashCode(), domainValidateBody1.hashCode());
        System.assertEquals(domainValidateBody2.hashCode(), domainValidateBody2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDomainValidateBody domainValidateBody1 = OASDomainValidateBody.getExample();
        OASDomainValidateBody domainValidateBody2 = OASDomainValidateBody.getExample();
        OASDomainValidateBody domainValidateBody3 = new OASDomainValidateBody();
        OASDomainValidateBody domainValidateBody4 = new OASDomainValidateBody();

        System.assert(domainValidateBody1.equals(domainValidateBody2));
        System.assert(domainValidateBody3.equals(domainValidateBody4));
        System.assertEquals(domainValidateBody1.hashCode(), domainValidateBody2.hashCode());
        System.assertEquals(domainValidateBody3.hashCode(), domainValidateBody4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASDomainValidateBody domainValidateBody = new OASDomainValidateBody();
        Map<String, String> propertymappings = domainValidateBody.getPropertyMappings();
        System.assertEquals('organizationGuid', propertymappings.get('organization_guid'));
        System.assertEquals('customDomain', propertymappings.get('custom_domain'));
        System.assertEquals('groupGuids', propertymappings.get('group_guids'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASDomainValidateBody domainValidateBody = new OASDomainValidateBody();
        System.assertEquals(new List<String>(), domainValidateBody.groupGuids);
        System.assertEquals(null, domainValidateBody.organizationGuid);
        System.assertEquals(null, domainValidateBody.customDomain);
        System.assertEquals(null, domainValidateBody.prevalidate);
    }
}