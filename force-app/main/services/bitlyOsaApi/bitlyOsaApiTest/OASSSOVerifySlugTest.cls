@isTest
private class OASSSOVerifySlugTest {
    @isTest
    private static void equalsSameInstance() {
        OASSSOVerifySlug ssOVerifySlug1 = OASSSOVerifySlug.getExample();
        OASSSOVerifySlug ssOVerifySlug2 = ssOVerifySlug1;
        OASSSOVerifySlug ssOVerifySlug3 = new OASSSOVerifySlug();
        OASSSOVerifySlug ssOVerifySlug4 = ssOVerifySlug3;

        System.assert(ssOVerifySlug1.equals(ssOVerifySlug2));
        System.assert(ssOVerifySlug2.equals(ssOVerifySlug1));
        System.assert(ssOVerifySlug1.equals(ssOVerifySlug1));
        System.assert(ssOVerifySlug3.equals(ssOVerifySlug4));
        System.assert(ssOVerifySlug4.equals(ssOVerifySlug3));
        System.assert(ssOVerifySlug3.equals(ssOVerifySlug3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSSOVerifySlug ssOVerifySlug1 = OASSSOVerifySlug.getExample();
        OASSSOVerifySlug ssOVerifySlug2 = OASSSOVerifySlug.getExample();
        OASSSOVerifySlug ssOVerifySlug3 = new OASSSOVerifySlug();
        OASSSOVerifySlug ssOVerifySlug4 = new OASSSOVerifySlug();

        System.assert(ssOVerifySlug1.equals(ssOVerifySlug2));
        System.assert(ssOVerifySlug2.equals(ssOVerifySlug1));
        System.assert(ssOVerifySlug3.equals(ssOVerifySlug4));
        System.assert(ssOVerifySlug4.equals(ssOVerifySlug3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSSOVerifySlug ssOVerifySlug1 = OASSSOVerifySlug.getExample();
        OASSSOVerifySlug ssOVerifySlug2 = new OASSSOVerifySlug();

        System.assertEquals(false, ssOVerifySlug1.equals('foo'));
        System.assertEquals(false, ssOVerifySlug2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSSOVerifySlug ssOVerifySlug1 = OASSSOVerifySlug.getExample();
        OASSSOVerifySlug ssOVerifySlug2 = new OASSSOVerifySlug();
        OASSSOVerifySlug ssOVerifySlug3;

        System.assertEquals(false, ssOVerifySlug1.equals(ssOVerifySlug3));
        System.assertEquals(false, ssOVerifySlug2.equals(ssOVerifySlug3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSSOVerifySlug ssOVerifySlug1 = OASSSOVerifySlug.getExample();
        OASSSOVerifySlug ssOVerifySlug2 = new OASSSOVerifySlug();

        System.assertEquals(ssOVerifySlug1.hashCode(), ssOVerifySlug1.hashCode());
        System.assertEquals(ssOVerifySlug2.hashCode(), ssOVerifySlug2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSSOVerifySlug ssOVerifySlug1 = OASSSOVerifySlug.getExample();
        OASSSOVerifySlug ssOVerifySlug2 = OASSSOVerifySlug.getExample();
        OASSSOVerifySlug ssOVerifySlug3 = new OASSSOVerifySlug();
        OASSSOVerifySlug ssOVerifySlug4 = new OASSSOVerifySlug();

        System.assert(ssOVerifySlug1.equals(ssOVerifySlug2));
        System.assert(ssOVerifySlug3.equals(ssOVerifySlug4));
        System.assertEquals(ssOVerifySlug1.hashCode(), ssOVerifySlug2.hashCode());
        System.assertEquals(ssOVerifySlug3.hashCode(), ssOVerifySlug4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSSOVerifySlug ssOVerifySlug = new OASSSOVerifySlug();
        Map<String, String> propertymappings = ssOVerifySlug.getPropertyMappings();
        System.assertEquals('urlSlug', propertymappings.get('url_slug'));
    }
}