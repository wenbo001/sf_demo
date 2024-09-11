@isTest
private class OASLinkClicksTest {
    @isTest
    private static void equalsSameInstance() {
        OASLinkClicks linkClicks1 = OASLinkClicks.getExample();
        OASLinkClicks linkClicks2 = linkClicks1;
        OASLinkClicks linkClicks3 = new OASLinkClicks();
        OASLinkClicks linkClicks4 = linkClicks3;

        System.assert(linkClicks1.equals(linkClicks2));
        System.assert(linkClicks2.equals(linkClicks1));
        System.assert(linkClicks1.equals(linkClicks1));
        System.assert(linkClicks3.equals(linkClicks4));
        System.assert(linkClicks4.equals(linkClicks3));
        System.assert(linkClicks3.equals(linkClicks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLinkClicks linkClicks1 = OASLinkClicks.getExample();
        OASLinkClicks linkClicks2 = OASLinkClicks.getExample();
        OASLinkClicks linkClicks3 = new OASLinkClicks();
        OASLinkClicks linkClicks4 = new OASLinkClicks();

        System.assert(linkClicks1.equals(linkClicks2));
        System.assert(linkClicks2.equals(linkClicks1));
        System.assert(linkClicks3.equals(linkClicks4));
        System.assert(linkClicks4.equals(linkClicks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLinkClicks linkClicks1 = OASLinkClicks.getExample();
        OASLinkClicks linkClicks2 = new OASLinkClicks();

        System.assertEquals(false, linkClicks1.equals('foo'));
        System.assertEquals(false, linkClicks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLinkClicks linkClicks1 = OASLinkClicks.getExample();
        OASLinkClicks linkClicks2 = new OASLinkClicks();
        OASLinkClicks linkClicks3;

        System.assertEquals(false, linkClicks1.equals(linkClicks3));
        System.assertEquals(false, linkClicks2.equals(linkClicks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLinkClicks linkClicks1 = OASLinkClicks.getExample();
        OASLinkClicks linkClicks2 = new OASLinkClicks();

        System.assertEquals(linkClicks1.hashCode(), linkClicks1.hashCode());
        System.assertEquals(linkClicks2.hashCode(), linkClicks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLinkClicks linkClicks1 = OASLinkClicks.getExample();
        OASLinkClicks linkClicks2 = OASLinkClicks.getExample();
        OASLinkClicks linkClicks3 = new OASLinkClicks();
        OASLinkClicks linkClicks4 = new OASLinkClicks();

        System.assert(linkClicks1.equals(linkClicks2));
        System.assert(linkClicks3.equals(linkClicks4));
        System.assertEquals(linkClicks1.hashCode(), linkClicks2.hashCode());
        System.assertEquals(linkClicks3.hashCode(), linkClicks4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASLinkClicks linkClicks = new OASLinkClicks();
        Map<String, String> propertymappings = linkClicks.getPropertyMappings();
        System.assertEquals('r_date', propertymappings.get('date'));
    }
}