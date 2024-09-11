@isTest
private class OASPlatformLimitsTest {
    @isTest
    private static void equalsSameInstance() {
        OASPlatformLimits platformLimits1 = OASPlatformLimits.getExample();
        OASPlatformLimits platformLimits2 = platformLimits1;
        OASPlatformLimits platformLimits3 = new OASPlatformLimits();
        OASPlatformLimits platformLimits4 = platformLimits3;

        System.assert(platformLimits1.equals(platformLimits2));
        System.assert(platformLimits2.equals(platformLimits1));
        System.assert(platformLimits1.equals(platformLimits1));
        System.assert(platformLimits3.equals(platformLimits4));
        System.assert(platformLimits4.equals(platformLimits3));
        System.assert(platformLimits3.equals(platformLimits3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPlatformLimits platformLimits1 = OASPlatformLimits.getExample();
        OASPlatformLimits platformLimits2 = OASPlatformLimits.getExample();
        OASPlatformLimits platformLimits3 = new OASPlatformLimits();
        OASPlatformLimits platformLimits4 = new OASPlatformLimits();

        System.assert(platformLimits1.equals(platformLimits2));
        System.assert(platformLimits2.equals(platformLimits1));
        System.assert(platformLimits3.equals(platformLimits4));
        System.assert(platformLimits4.equals(platformLimits3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPlatformLimits platformLimits1 = OASPlatformLimits.getExample();
        OASPlatformLimits platformLimits2 = new OASPlatformLimits();

        System.assertEquals(false, platformLimits1.equals('foo'));
        System.assertEquals(false, platformLimits2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPlatformLimits platformLimits1 = OASPlatformLimits.getExample();
        OASPlatformLimits platformLimits2 = new OASPlatformLimits();
        OASPlatformLimits platformLimits3;

        System.assertEquals(false, platformLimits1.equals(platformLimits3));
        System.assertEquals(false, platformLimits2.equals(platformLimits3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPlatformLimits platformLimits1 = OASPlatformLimits.getExample();
        OASPlatformLimits platformLimits2 = new OASPlatformLimits();

        System.assertEquals(platformLimits1.hashCode(), platformLimits1.hashCode());
        System.assertEquals(platformLimits2.hashCode(), platformLimits2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPlatformLimits platformLimits1 = OASPlatformLimits.getExample();
        OASPlatformLimits platformLimits2 = OASPlatformLimits.getExample();
        OASPlatformLimits platformLimits3 = new OASPlatformLimits();
        OASPlatformLimits platformLimits4 = new OASPlatformLimits();

        System.assert(platformLimits1.equals(platformLimits2));
        System.assert(platformLimits3.equals(platformLimits4));
        System.assertEquals(platformLimits1.hashCode(), platformLimits2.hashCode());
        System.assertEquals(platformLimits3.hashCode(), platformLimits4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPlatformLimits platformLimits = new OASPlatformLimits();
        Map<String, String> propertymappings = platformLimits.getPropertyMappings();
        System.assertEquals('platformLimits', propertymappings.get('platform_limits'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASPlatformLimits platformLimits = new OASPlatformLimits();
        System.assertEquals(new List<OASPlatformLimit>(), platformLimits.platformLimits);
    }
}