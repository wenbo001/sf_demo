@isTest
private class OASUserPreferenceBodyTest {
    @isTest
    private static void equalsSameInstance() {
        OASUserPreferenceBody userPreferenceBody1 = OASUserPreferenceBody.getExample();
        OASUserPreferenceBody userPreferenceBody2 = userPreferenceBody1;
        OASUserPreferenceBody userPreferenceBody3 = new OASUserPreferenceBody();
        OASUserPreferenceBody userPreferenceBody4 = userPreferenceBody3;

        System.assert(userPreferenceBody1.equals(userPreferenceBody2));
        System.assert(userPreferenceBody2.equals(userPreferenceBody1));
        System.assert(userPreferenceBody1.equals(userPreferenceBody1));
        System.assert(userPreferenceBody3.equals(userPreferenceBody4));
        System.assert(userPreferenceBody4.equals(userPreferenceBody3));
        System.assert(userPreferenceBody3.equals(userPreferenceBody3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUserPreferenceBody userPreferenceBody1 = OASUserPreferenceBody.getExample();
        OASUserPreferenceBody userPreferenceBody2 = OASUserPreferenceBody.getExample();
        OASUserPreferenceBody userPreferenceBody3 = new OASUserPreferenceBody();
        OASUserPreferenceBody userPreferenceBody4 = new OASUserPreferenceBody();

        System.assert(userPreferenceBody1.equals(userPreferenceBody2));
        System.assert(userPreferenceBody2.equals(userPreferenceBody1));
        System.assert(userPreferenceBody3.equals(userPreferenceBody4));
        System.assert(userPreferenceBody4.equals(userPreferenceBody3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUserPreferenceBody userPreferenceBody1 = OASUserPreferenceBody.getExample();
        OASUserPreferenceBody userPreferenceBody2 = new OASUserPreferenceBody();

        System.assertEquals(false, userPreferenceBody1.equals('foo'));
        System.assertEquals(false, userPreferenceBody2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUserPreferenceBody userPreferenceBody1 = OASUserPreferenceBody.getExample();
        OASUserPreferenceBody userPreferenceBody2 = new OASUserPreferenceBody();
        OASUserPreferenceBody userPreferenceBody3;

        System.assertEquals(false, userPreferenceBody1.equals(userPreferenceBody3));
        System.assertEquals(false, userPreferenceBody2.equals(userPreferenceBody3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUserPreferenceBody userPreferenceBody1 = OASUserPreferenceBody.getExample();
        OASUserPreferenceBody userPreferenceBody2 = new OASUserPreferenceBody();

        System.assertEquals(userPreferenceBody1.hashCode(), userPreferenceBody1.hashCode());
        System.assertEquals(userPreferenceBody2.hashCode(), userPreferenceBody2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUserPreferenceBody userPreferenceBody1 = OASUserPreferenceBody.getExample();
        OASUserPreferenceBody userPreferenceBody2 = OASUserPreferenceBody.getExample();
        OASUserPreferenceBody userPreferenceBody3 = new OASUserPreferenceBody();
        OASUserPreferenceBody userPreferenceBody4 = new OASUserPreferenceBody();

        System.assert(userPreferenceBody1.equals(userPreferenceBody2));
        System.assert(userPreferenceBody3.equals(userPreferenceBody4));
        System.assertEquals(userPreferenceBody1.hashCode(), userPreferenceBody2.hashCode());
        System.assertEquals(userPreferenceBody3.hashCode(), userPreferenceBody4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUserPreferenceBody userPreferenceBody = new OASUserPreferenceBody();
        Map<String, String> propertymappings = userPreferenceBody.getPropertyMappings();
        System.assertEquals('isActive', propertymappings.get('is_active'));
    }
}