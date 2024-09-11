@isTest
private class OASSortedLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASSortedLinks sortedLinks1 = OASSortedLinks.getExample();
        OASSortedLinks sortedLinks2 = sortedLinks1;
        OASSortedLinks sortedLinks3 = new OASSortedLinks();
        OASSortedLinks sortedLinks4 = sortedLinks3;

        System.assert(sortedLinks1.equals(sortedLinks2));
        System.assert(sortedLinks2.equals(sortedLinks1));
        System.assert(sortedLinks1.equals(sortedLinks1));
        System.assert(sortedLinks3.equals(sortedLinks4));
        System.assert(sortedLinks4.equals(sortedLinks3));
        System.assert(sortedLinks3.equals(sortedLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSortedLinks sortedLinks1 = OASSortedLinks.getExample();
        OASSortedLinks sortedLinks2 = OASSortedLinks.getExample();
        OASSortedLinks sortedLinks3 = new OASSortedLinks();
        OASSortedLinks sortedLinks4 = new OASSortedLinks();

        System.assert(sortedLinks1.equals(sortedLinks2));
        System.assert(sortedLinks2.equals(sortedLinks1));
        System.assert(sortedLinks3.equals(sortedLinks4));
        System.assert(sortedLinks4.equals(sortedLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSortedLinks sortedLinks1 = OASSortedLinks.getExample();
        OASSortedLinks sortedLinks2 = new OASSortedLinks();

        System.assertEquals(false, sortedLinks1.equals('foo'));
        System.assertEquals(false, sortedLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSortedLinks sortedLinks1 = OASSortedLinks.getExample();
        OASSortedLinks sortedLinks2 = new OASSortedLinks();
        OASSortedLinks sortedLinks3;

        System.assertEquals(false, sortedLinks1.equals(sortedLinks3));
        System.assertEquals(false, sortedLinks2.equals(sortedLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSortedLinks sortedLinks1 = OASSortedLinks.getExample();
        OASSortedLinks sortedLinks2 = new OASSortedLinks();

        System.assertEquals(sortedLinks1.hashCode(), sortedLinks1.hashCode());
        System.assertEquals(sortedLinks2.hashCode(), sortedLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSortedLinks sortedLinks1 = OASSortedLinks.getExample();
        OASSortedLinks sortedLinks2 = OASSortedLinks.getExample();
        OASSortedLinks sortedLinks3 = new OASSortedLinks();
        OASSortedLinks sortedLinks4 = new OASSortedLinks();

        System.assert(sortedLinks1.equals(sortedLinks2));
        System.assert(sortedLinks3.equals(sortedLinks4));
        System.assertEquals(sortedLinks1.hashCode(), sortedLinks2.hashCode());
        System.assertEquals(sortedLinks3.hashCode(), sortedLinks4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSortedLinks sortedLinks = new OASSortedLinks();
        Map<String, String> propertymappings = sortedLinks.getPropertyMappings();
        System.assertEquals('sortedLinks', propertymappings.get('sorted_links'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASSortedLinks sortedLinks = new OASSortedLinks();
        System.assertEquals(new List<OASBitlinkBody>(), sortedLinks.links);
        System.assertEquals(new List<OASClickLink>(), sortedLinks.sortedLinks);
    }
}