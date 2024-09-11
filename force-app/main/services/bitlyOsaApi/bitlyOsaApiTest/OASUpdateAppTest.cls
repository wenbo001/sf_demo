@isTest
private class OASUpdateAppTest {
    @isTest
    private static void equalsSameInstance() {
        OASUpdateApp updateApp1 = OASUpdateApp.getExample();
        OASUpdateApp updateApp2 = updateApp1;
        OASUpdateApp updateApp3 = new OASUpdateApp();
        OASUpdateApp updateApp4 = updateApp3;

        System.assert(updateApp1.equals(updateApp2));
        System.assert(updateApp2.equals(updateApp1));
        System.assert(updateApp1.equals(updateApp1));
        System.assert(updateApp3.equals(updateApp4));
        System.assert(updateApp4.equals(updateApp3));
        System.assert(updateApp3.equals(updateApp3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUpdateApp updateApp1 = OASUpdateApp.getExample();
        OASUpdateApp updateApp2 = OASUpdateApp.getExample();
        OASUpdateApp updateApp3 = new OASUpdateApp();
        OASUpdateApp updateApp4 = new OASUpdateApp();

        System.assert(updateApp1.equals(updateApp2));
        System.assert(updateApp2.equals(updateApp1));
        System.assert(updateApp3.equals(updateApp4));
        System.assert(updateApp4.equals(updateApp3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUpdateApp updateApp1 = OASUpdateApp.getExample();
        OASUpdateApp updateApp2 = new OASUpdateApp();

        System.assertEquals(false, updateApp1.equals('foo'));
        System.assertEquals(false, updateApp2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUpdateApp updateApp1 = OASUpdateApp.getExample();
        OASUpdateApp updateApp2 = new OASUpdateApp();
        OASUpdateApp updateApp3;

        System.assertEquals(false, updateApp1.equals(updateApp3));
        System.assertEquals(false, updateApp2.equals(updateApp3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUpdateApp updateApp1 = OASUpdateApp.getExample();
        OASUpdateApp updateApp2 = new OASUpdateApp();

        System.assertEquals(updateApp1.hashCode(), updateApp1.hashCode());
        System.assertEquals(updateApp2.hashCode(), updateApp2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUpdateApp updateApp1 = OASUpdateApp.getExample();
        OASUpdateApp updateApp2 = OASUpdateApp.getExample();
        OASUpdateApp updateApp3 = new OASUpdateApp();
        OASUpdateApp updateApp4 = new OASUpdateApp();

        System.assert(updateApp1.equals(updateApp2));
        System.assert(updateApp3.equals(updateApp4));
        System.assertEquals(updateApp1.hashCode(), updateApp2.hashCode());
        System.assertEquals(updateApp3.hashCode(), updateApp4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUpdateApp updateApp = new OASUpdateApp();
        Map<String, String> propertymappings = updateApp.getPropertyMappings();
        System.assertEquals('redirectUris', propertymappings.get('redirect_uris'));
        System.assertEquals('ipAllowlist', propertymappings.get('ip_allowlist'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASUpdateApp updateApp = new OASUpdateApp();
        System.assertEquals(new List<String>(), updateApp.redirectUris);
        System.assertEquals(new List<String>(), updateApp.ipAllowlist);
        System.assertEquals(null, updateApp.name);
        System.assertEquals(null, updateApp.description);
        System.assertEquals(null, updateApp.link);
    }
}