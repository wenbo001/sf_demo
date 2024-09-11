@isTest
private class OASLaunchpadImageContentDataAllOfTest {
    @isTest
    private static void equalsSameInstance() {
        OASLaunchpadImageContentDataAllOf launchpadImageContentDataAllOf1 = OASLaunchpadImageContentDataAllOf.getExample();
        OASLaunchpadImageContentDataAllOf launchpadImageContentDataAllOf2 = launchpadImageContentDataAllOf1;
        OASLaunchpadImageContentDataAllOf launchpadImageContentDataAllOf3 = new OASLaunchpadImageContentDataAllOf();
        OASLaunchpadImageContentDataAllOf launchpadImageContentDataAllOf4 = launchpadImageContentDataAllOf3;

        System.assert(launchpadImageContentDataAllOf1.equals(launchpadImageContentDataAllOf2));
        System.assert(launchpadImageContentDataAllOf2.equals(launchpadImageContentDataAllOf1));
        System.assert(launchpadImageContentDataAllOf1.equals(launchpadImageContentDataAllOf1));
        System.assert(launchpadImageContentDataAllOf3.equals(launchpadImageContentDataAllOf4));
        System.assert(launchpadImageContentDataAllOf4.equals(launchpadImageContentDataAllOf3));
        System.assert(launchpadImageContentDataAllOf3.equals(launchpadImageContentDataAllOf3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLaunchpadImageContentDataAllOf launchpadImageContentDataAllOf1 = OASLaunchpadImageContentDataAllOf.getExample();
        OASLaunchpadImageContentDataAllOf launchpadImageContentDataAllOf2 = OASLaunchpadImageContentDataAllOf.getExample();
        OASLaunchpadImageContentDataAllOf launchpadImageContentDataAllOf3 = new OASLaunchpadImageContentDataAllOf();
        OASLaunchpadImageContentDataAllOf launchpadImageContentDataAllOf4 = new OASLaunchpadImageContentDataAllOf();

        System.assert(launchpadImageContentDataAllOf1.equals(launchpadImageContentDataAllOf2));
        System.assert(launchpadImageContentDataAllOf2.equals(launchpadImageContentDataAllOf1));
        System.assert(launchpadImageContentDataAllOf3.equals(launchpadImageContentDataAllOf4));
        System.assert(launchpadImageContentDataAllOf4.equals(launchpadImageContentDataAllOf3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLaunchpadImageContentDataAllOf launchpadImageContentDataAllOf1 = OASLaunchpadImageContentDataAllOf.getExample();
        OASLaunchpadImageContentDataAllOf launchpadImageContentDataAllOf2 = new OASLaunchpadImageContentDataAllOf();

        System.assertEquals(false, launchpadImageContentDataAllOf1.equals('foo'));
        System.assertEquals(false, launchpadImageContentDataAllOf2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLaunchpadImageContentDataAllOf launchpadImageContentDataAllOf1 = OASLaunchpadImageContentDataAllOf.getExample();
        OASLaunchpadImageContentDataAllOf launchpadImageContentDataAllOf2 = new OASLaunchpadImageContentDataAllOf();
        OASLaunchpadImageContentDataAllOf launchpadImageContentDataAllOf3;

        System.assertEquals(false, launchpadImageContentDataAllOf1.equals(launchpadImageContentDataAllOf3));
        System.assertEquals(false, launchpadImageContentDataAllOf2.equals(launchpadImageContentDataAllOf3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLaunchpadImageContentDataAllOf launchpadImageContentDataAllOf1 = OASLaunchpadImageContentDataAllOf.getExample();
        OASLaunchpadImageContentDataAllOf launchpadImageContentDataAllOf2 = new OASLaunchpadImageContentDataAllOf();

        System.assertEquals(launchpadImageContentDataAllOf1.hashCode(), launchpadImageContentDataAllOf1.hashCode());
        System.assertEquals(launchpadImageContentDataAllOf2.hashCode(), launchpadImageContentDataAllOf2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLaunchpadImageContentDataAllOf launchpadImageContentDataAllOf1 = OASLaunchpadImageContentDataAllOf.getExample();
        OASLaunchpadImageContentDataAllOf launchpadImageContentDataAllOf2 = OASLaunchpadImageContentDataAllOf.getExample();
        OASLaunchpadImageContentDataAllOf launchpadImageContentDataAllOf3 = new OASLaunchpadImageContentDataAllOf();
        OASLaunchpadImageContentDataAllOf launchpadImageContentDataAllOf4 = new OASLaunchpadImageContentDataAllOf();

        System.assert(launchpadImageContentDataAllOf1.equals(launchpadImageContentDataAllOf2));
        System.assert(launchpadImageContentDataAllOf3.equals(launchpadImageContentDataAllOf4));
        System.assertEquals(launchpadImageContentDataAllOf1.hashCode(), launchpadImageContentDataAllOf2.hashCode());
        System.assertEquals(launchpadImageContentDataAllOf3.hashCode(), launchpadImageContentDataAllOf4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASLaunchpadImageContentDataAllOf launchpadImageContentDataAllOf = new OASLaunchpadImageContentDataAllOf();
        Map<String, String> propertymappings = launchpadImageContentDataAllOf.getPropertyMappings();
        System.assertEquals('aspectRatio', propertymappings.get('aspect_ratio'));
        System.assertEquals('linkTitle', propertymappings.get('link_title'));
        System.assertEquals('bitlinkId', propertymappings.get('bitlink_id'));
    }
}