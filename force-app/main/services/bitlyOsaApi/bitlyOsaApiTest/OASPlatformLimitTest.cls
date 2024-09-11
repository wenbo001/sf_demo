@isTest
private class OASPlatformLimitTest {
    @isTest
    private static void equalsSameInstance() {
        OASPlatformLimit platformLimit1 = OASPlatformLimit.getExample();
        OASPlatformLimit platformLimit2 = platformLimit1;
        OASPlatformLimit platformLimit3 = new OASPlatformLimit();
        OASPlatformLimit platformLimit4 = platformLimit3;

        System.assert(platformLimit1.equals(platformLimit2));
        System.assert(platformLimit2.equals(platformLimit1));
        System.assert(platformLimit1.equals(platformLimit1));
        System.assert(platformLimit3.equals(platformLimit4));
        System.assert(platformLimit4.equals(platformLimit3));
        System.assert(platformLimit3.equals(platformLimit3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPlatformLimit platformLimit1 = OASPlatformLimit.getExample();
        OASPlatformLimit platformLimit2 = OASPlatformLimit.getExample();
        OASPlatformLimit platformLimit3 = new OASPlatformLimit();
        OASPlatformLimit platformLimit4 = new OASPlatformLimit();

        System.assert(platformLimit1.equals(platformLimit2));
        System.assert(platformLimit2.equals(platformLimit1));
        System.assert(platformLimit3.equals(platformLimit4));
        System.assert(platformLimit4.equals(platformLimit3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPlatformLimit platformLimit1 = OASPlatformLimit.getExample();
        OASPlatformLimit platformLimit2 = new OASPlatformLimit();

        System.assertEquals(false, platformLimit1.equals('foo'));
        System.assertEquals(false, platformLimit2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPlatformLimit platformLimit1 = OASPlatformLimit.getExample();
        OASPlatformLimit platformLimit2 = new OASPlatformLimit();
        OASPlatformLimit platformLimit3;

        System.assertEquals(false, platformLimit1.equals(platformLimit3));
        System.assertEquals(false, platformLimit2.equals(platformLimit3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPlatformLimit platformLimit1 = OASPlatformLimit.getExample();
        OASPlatformLimit platformLimit2 = new OASPlatformLimit();

        System.assertEquals(platformLimit1.hashCode(), platformLimit1.hashCode());
        System.assertEquals(platformLimit2.hashCode(), platformLimit2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPlatformLimit platformLimit1 = OASPlatformLimit.getExample();
        OASPlatformLimit platformLimit2 = OASPlatformLimit.getExample();
        OASPlatformLimit platformLimit3 = new OASPlatformLimit();
        OASPlatformLimit platformLimit4 = new OASPlatformLimit();

        System.assert(platformLimit1.equals(platformLimit2));
        System.assert(platformLimit3.equals(platformLimit4));
        System.assertEquals(platformLimit1.hashCode(), platformLimit2.hashCode());
        System.assertEquals(platformLimit3.hashCode(), platformLimit4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASPlatformLimit platformLimit = new OASPlatformLimit();
        System.assertEquals(new List<OASMethodLimit>(), platformLimit.methods);
        System.assertEquals(null, platformLimit.endpoint);
    }
}