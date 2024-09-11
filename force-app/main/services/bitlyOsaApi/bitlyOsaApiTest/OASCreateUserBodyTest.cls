@isTest
private class OASCreateUserBodyTest {
    @isTest
    private static void equalsSameInstance() {
        OASCreateUserBody createUserBody1 = OASCreateUserBody.getExample();
        OASCreateUserBody createUserBody2 = createUserBody1;
        OASCreateUserBody createUserBody3 = new OASCreateUserBody();
        OASCreateUserBody createUserBody4 = createUserBody3;

        System.assert(createUserBody1.equals(createUserBody2));
        System.assert(createUserBody2.equals(createUserBody1));
        System.assert(createUserBody1.equals(createUserBody1));
        System.assert(createUserBody3.equals(createUserBody4));
        System.assert(createUserBody4.equals(createUserBody3));
        System.assert(createUserBody3.equals(createUserBody3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCreateUserBody createUserBody1 = OASCreateUserBody.getExample();
        OASCreateUserBody createUserBody2 = OASCreateUserBody.getExample();
        OASCreateUserBody createUserBody3 = new OASCreateUserBody();
        OASCreateUserBody createUserBody4 = new OASCreateUserBody();

        System.assert(createUserBody1.equals(createUserBody2));
        System.assert(createUserBody2.equals(createUserBody1));
        System.assert(createUserBody3.equals(createUserBody4));
        System.assert(createUserBody4.equals(createUserBody3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCreateUserBody createUserBody1 = OASCreateUserBody.getExample();
        OASCreateUserBody createUserBody2 = new OASCreateUserBody();

        System.assertEquals(false, createUserBody1.equals('foo'));
        System.assertEquals(false, createUserBody2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCreateUserBody createUserBody1 = OASCreateUserBody.getExample();
        OASCreateUserBody createUserBody2 = new OASCreateUserBody();
        OASCreateUserBody createUserBody3;

        System.assertEquals(false, createUserBody1.equals(createUserBody3));
        System.assertEquals(false, createUserBody2.equals(createUserBody3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCreateUserBody createUserBody1 = OASCreateUserBody.getExample();
        OASCreateUserBody createUserBody2 = new OASCreateUserBody();

        System.assertEquals(createUserBody1.hashCode(), createUserBody1.hashCode());
        System.assertEquals(createUserBody2.hashCode(), createUserBody2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCreateUserBody createUserBody1 = OASCreateUserBody.getExample();
        OASCreateUserBody createUserBody2 = OASCreateUserBody.getExample();
        OASCreateUserBody createUserBody3 = new OASCreateUserBody();
        OASCreateUserBody createUserBody4 = new OASCreateUserBody();

        System.assert(createUserBody1.equals(createUserBody2));
        System.assert(createUserBody3.equals(createUserBody4));
        System.assertEquals(createUserBody1.hashCode(), createUserBody2.hashCode());
        System.assertEquals(createUserBody3.hashCode(), createUserBody4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCreateUserBody createUserBody = new OASCreateUserBody();
        Map<String, String> propertymappings = createUserBody.getPropertyMappings();
        System.assertEquals('fullName', propertymappings.get('full_name'));
        System.assertEquals('inviteToken', propertymappings.get('invite_token'));
        System.assertEquals('campaignSource', propertymappings.get('campaign_source'));
    }
}