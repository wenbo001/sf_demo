@isTest
private class OASClickLinkTest {
    @isTest
    private static void equalsSameInstance() {
        OASClickLink clickLink1 = OASClickLink.getExample();
        OASClickLink clickLink2 = clickLink1;
        OASClickLink clickLink3 = new OASClickLink();
        OASClickLink clickLink4 = clickLink3;

        System.assert(clickLink1.equals(clickLink2));
        System.assert(clickLink2.equals(clickLink1));
        System.assert(clickLink1.equals(clickLink1));
        System.assert(clickLink3.equals(clickLink4));
        System.assert(clickLink4.equals(clickLink3));
        System.assert(clickLink3.equals(clickLink3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASClickLink clickLink1 = OASClickLink.getExample();
        OASClickLink clickLink2 = OASClickLink.getExample();
        OASClickLink clickLink3 = new OASClickLink();
        OASClickLink clickLink4 = new OASClickLink();

        System.assert(clickLink1.equals(clickLink2));
        System.assert(clickLink2.equals(clickLink1));
        System.assert(clickLink3.equals(clickLink4));
        System.assert(clickLink4.equals(clickLink3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASClickLink clickLink1 = OASClickLink.getExample();
        OASClickLink clickLink2 = new OASClickLink();

        System.assertEquals(false, clickLink1.equals('foo'));
        System.assertEquals(false, clickLink2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASClickLink clickLink1 = OASClickLink.getExample();
        OASClickLink clickLink2 = new OASClickLink();
        OASClickLink clickLink3;

        System.assertEquals(false, clickLink1.equals(clickLink3));
        System.assertEquals(false, clickLink2.equals(clickLink3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASClickLink clickLink1 = OASClickLink.getExample();
        OASClickLink clickLink2 = new OASClickLink();

        System.assertEquals(clickLink1.hashCode(), clickLink1.hashCode());
        System.assertEquals(clickLink2.hashCode(), clickLink2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASClickLink clickLink1 = OASClickLink.getExample();
        OASClickLink clickLink2 = OASClickLink.getExample();
        OASClickLink clickLink3 = new OASClickLink();
        OASClickLink clickLink4 = new OASClickLink();

        System.assert(clickLink1.equals(clickLink2));
        System.assert(clickLink3.equals(clickLink4));
        System.assertEquals(clickLink1.hashCode(), clickLink2.hashCode());
        System.assertEquals(clickLink3.hashCode(), clickLink4.hashCode());
    }
}