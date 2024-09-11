@isTest
private class OASContentRequestSocialTest {
    @isTest
    private static void equalsSameInstance() {
        OASContentRequestSocial contentRequestSocial1 = OASContentRequestSocial.getExample();
        OASContentRequestSocial contentRequestSocial2 = contentRequestSocial1;
        OASContentRequestSocial contentRequestSocial3 = new OASContentRequestSocial();
        OASContentRequestSocial contentRequestSocial4 = contentRequestSocial3;

        System.assert(contentRequestSocial1.equals(contentRequestSocial2));
        System.assert(contentRequestSocial2.equals(contentRequestSocial1));
        System.assert(contentRequestSocial1.equals(contentRequestSocial1));
        System.assert(contentRequestSocial3.equals(contentRequestSocial4));
        System.assert(contentRequestSocial4.equals(contentRequestSocial3));
        System.assert(contentRequestSocial3.equals(contentRequestSocial3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASContentRequestSocial contentRequestSocial1 = OASContentRequestSocial.getExample();
        OASContentRequestSocial contentRequestSocial2 = OASContentRequestSocial.getExample();
        OASContentRequestSocial contentRequestSocial3 = new OASContentRequestSocial();
        OASContentRequestSocial contentRequestSocial4 = new OASContentRequestSocial();

        System.assert(contentRequestSocial1.equals(contentRequestSocial2));
        System.assert(contentRequestSocial2.equals(contentRequestSocial1));
        System.assert(contentRequestSocial3.equals(contentRequestSocial4));
        System.assert(contentRequestSocial4.equals(contentRequestSocial3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASContentRequestSocial contentRequestSocial1 = OASContentRequestSocial.getExample();
        OASContentRequestSocial contentRequestSocial2 = new OASContentRequestSocial();

        System.assertEquals(false, contentRequestSocial1.equals('foo'));
        System.assertEquals(false, contentRequestSocial2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASContentRequestSocial contentRequestSocial1 = OASContentRequestSocial.getExample();
        OASContentRequestSocial contentRequestSocial2 = new OASContentRequestSocial();
        OASContentRequestSocial contentRequestSocial3;

        System.assertEquals(false, contentRequestSocial1.equals(contentRequestSocial3));
        System.assertEquals(false, contentRequestSocial2.equals(contentRequestSocial3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASContentRequestSocial contentRequestSocial1 = OASContentRequestSocial.getExample();
        OASContentRequestSocial contentRequestSocial2 = new OASContentRequestSocial();

        System.assertEquals(contentRequestSocial1.hashCode(), contentRequestSocial1.hashCode());
        System.assertEquals(contentRequestSocial2.hashCode(), contentRequestSocial2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASContentRequestSocial contentRequestSocial1 = OASContentRequestSocial.getExample();
        OASContentRequestSocial contentRequestSocial2 = OASContentRequestSocial.getExample();
        OASContentRequestSocial contentRequestSocial3 = new OASContentRequestSocial();
        OASContentRequestSocial contentRequestSocial4 = new OASContentRequestSocial();

        System.assert(contentRequestSocial1.equals(contentRequestSocial2));
        System.assert(contentRequestSocial3.equals(contentRequestSocial4));
        System.assertEquals(contentRequestSocial1.hashCode(), contentRequestSocial2.hashCode());
        System.assertEquals(contentRequestSocial3.hashCode(), contentRequestSocial4.hashCode());
    }
}