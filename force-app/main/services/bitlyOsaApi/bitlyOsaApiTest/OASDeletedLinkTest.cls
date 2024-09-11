@isTest
private class OASDeletedLinkTest {
    @isTest
    private static void equalsSameInstance() {
        OASDeletedLink deletedLink1 = OASDeletedLink.getExample();
        OASDeletedLink deletedLink2 = deletedLink1;
        OASDeletedLink deletedLink3 = new OASDeletedLink();
        OASDeletedLink deletedLink4 = deletedLink3;

        System.assert(deletedLink1.equals(deletedLink2));
        System.assert(deletedLink2.equals(deletedLink1));
        System.assert(deletedLink1.equals(deletedLink1));
        System.assert(deletedLink3.equals(deletedLink4));
        System.assert(deletedLink4.equals(deletedLink3));
        System.assert(deletedLink3.equals(deletedLink3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDeletedLink deletedLink1 = OASDeletedLink.getExample();
        OASDeletedLink deletedLink2 = OASDeletedLink.getExample();
        OASDeletedLink deletedLink3 = new OASDeletedLink();
        OASDeletedLink deletedLink4 = new OASDeletedLink();

        System.assert(deletedLink1.equals(deletedLink2));
        System.assert(deletedLink2.equals(deletedLink1));
        System.assert(deletedLink3.equals(deletedLink4));
        System.assert(deletedLink4.equals(deletedLink3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDeletedLink deletedLink1 = OASDeletedLink.getExample();
        OASDeletedLink deletedLink2 = new OASDeletedLink();

        System.assertEquals(false, deletedLink1.equals('foo'));
        System.assertEquals(false, deletedLink2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDeletedLink deletedLink1 = OASDeletedLink.getExample();
        OASDeletedLink deletedLink2 = new OASDeletedLink();
        OASDeletedLink deletedLink3;

        System.assertEquals(false, deletedLink1.equals(deletedLink3));
        System.assertEquals(false, deletedLink2.equals(deletedLink3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDeletedLink deletedLink1 = OASDeletedLink.getExample();
        OASDeletedLink deletedLink2 = new OASDeletedLink();

        System.assertEquals(deletedLink1.hashCode(), deletedLink1.hashCode());
        System.assertEquals(deletedLink2.hashCode(), deletedLink2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDeletedLink deletedLink1 = OASDeletedLink.getExample();
        OASDeletedLink deletedLink2 = OASDeletedLink.getExample();
        OASDeletedLink deletedLink3 = new OASDeletedLink();
        OASDeletedLink deletedLink4 = new OASDeletedLink();

        System.assert(deletedLink1.equals(deletedLink2));
        System.assert(deletedLink3.equals(deletedLink4));
        System.assertEquals(deletedLink1.hashCode(), deletedLink2.hashCode());
        System.assertEquals(deletedLink3.hashCode(), deletedLink4.hashCode());
    }
}