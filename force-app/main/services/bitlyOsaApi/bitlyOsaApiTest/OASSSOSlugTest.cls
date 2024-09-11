@isTest
private class OASSSOSlugTest {
    @isTest
    private static void equalsSameInstance() {
        OASSSOSlug ssOSlug1 = OASSSOSlug.getExample();
        OASSSOSlug ssOSlug2 = ssOSlug1;
        OASSSOSlug ssOSlug3 = new OASSSOSlug();
        OASSSOSlug ssOSlug4 = ssOSlug3;

        System.assert(ssOSlug1.equals(ssOSlug2));
        System.assert(ssOSlug2.equals(ssOSlug1));
        System.assert(ssOSlug1.equals(ssOSlug1));
        System.assert(ssOSlug3.equals(ssOSlug4));
        System.assert(ssOSlug4.equals(ssOSlug3));
        System.assert(ssOSlug3.equals(ssOSlug3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSSOSlug ssOSlug1 = OASSSOSlug.getExample();
        OASSSOSlug ssOSlug2 = OASSSOSlug.getExample();
        OASSSOSlug ssOSlug3 = new OASSSOSlug();
        OASSSOSlug ssOSlug4 = new OASSSOSlug();

        System.assert(ssOSlug1.equals(ssOSlug2));
        System.assert(ssOSlug2.equals(ssOSlug1));
        System.assert(ssOSlug3.equals(ssOSlug4));
        System.assert(ssOSlug4.equals(ssOSlug3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSSOSlug ssOSlug1 = OASSSOSlug.getExample();
        OASSSOSlug ssOSlug2 = new OASSSOSlug();

        System.assertEquals(false, ssOSlug1.equals('foo'));
        System.assertEquals(false, ssOSlug2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSSOSlug ssOSlug1 = OASSSOSlug.getExample();
        OASSSOSlug ssOSlug2 = new OASSSOSlug();
        OASSSOSlug ssOSlug3;

        System.assertEquals(false, ssOSlug1.equals(ssOSlug3));
        System.assertEquals(false, ssOSlug2.equals(ssOSlug3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSSOSlug ssOSlug1 = OASSSOSlug.getExample();
        OASSSOSlug ssOSlug2 = new OASSSOSlug();

        System.assertEquals(ssOSlug1.hashCode(), ssOSlug1.hashCode());
        System.assertEquals(ssOSlug2.hashCode(), ssOSlug2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSSOSlug ssOSlug1 = OASSSOSlug.getExample();
        OASSSOSlug ssOSlug2 = OASSSOSlug.getExample();
        OASSSOSlug ssOSlug3 = new OASSSOSlug();
        OASSSOSlug ssOSlug4 = new OASSSOSlug();

        System.assert(ssOSlug1.equals(ssOSlug2));
        System.assert(ssOSlug3.equals(ssOSlug4));
        System.assertEquals(ssOSlug1.hashCode(), ssOSlug2.hashCode());
        System.assertEquals(ssOSlug3.hashCode(), ssOSlug4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSSOSlug ssOSlug = new OASSSOSlug();
        Map<String, String> propertymappings = ssOSlug.getPropertyMappings();
        System.assertEquals('urlSlug', propertymappings.get('url_slug'));
    }
}