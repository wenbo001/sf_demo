@isTest
private class OASAppAssociationsTest {
    @isTest
    private static void equalsSameInstance() {
        OASAppAssociations appAssociations1 = OASAppAssociations.getExample();
        OASAppAssociations appAssociations2 = appAssociations1;
        OASAppAssociations appAssociations3 = new OASAppAssociations();
        OASAppAssociations appAssociations4 = appAssociations3;

        System.assert(appAssociations1.equals(appAssociations2));
        System.assert(appAssociations2.equals(appAssociations1));
        System.assert(appAssociations1.equals(appAssociations1));
        System.assert(appAssociations3.equals(appAssociations4));
        System.assert(appAssociations4.equals(appAssociations3));
        System.assert(appAssociations3.equals(appAssociations3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAppAssociations appAssociations1 = OASAppAssociations.getExample();
        OASAppAssociations appAssociations2 = OASAppAssociations.getExample();
        OASAppAssociations appAssociations3 = new OASAppAssociations();
        OASAppAssociations appAssociations4 = new OASAppAssociations();

        System.assert(appAssociations1.equals(appAssociations2));
        System.assert(appAssociations2.equals(appAssociations1));
        System.assert(appAssociations3.equals(appAssociations4));
        System.assert(appAssociations4.equals(appAssociations3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAppAssociations appAssociations1 = OASAppAssociations.getExample();
        OASAppAssociations appAssociations2 = new OASAppAssociations();

        System.assertEquals(false, appAssociations1.equals('foo'));
        System.assertEquals(false, appAssociations2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAppAssociations appAssociations1 = OASAppAssociations.getExample();
        OASAppAssociations appAssociations2 = new OASAppAssociations();
        OASAppAssociations appAssociations3;

        System.assertEquals(false, appAssociations1.equals(appAssociations3));
        System.assertEquals(false, appAssociations2.equals(appAssociations3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAppAssociations appAssociations1 = OASAppAssociations.getExample();
        OASAppAssociations appAssociations2 = new OASAppAssociations();

        System.assertEquals(appAssociations1.hashCode(), appAssociations1.hashCode());
        System.assertEquals(appAssociations2.hashCode(), appAssociations2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAppAssociations appAssociations1 = OASAppAssociations.getExample();
        OASAppAssociations appAssociations2 = OASAppAssociations.getExample();
        OASAppAssociations appAssociations3 = new OASAppAssociations();
        OASAppAssociations appAssociations4 = new OASAppAssociations();

        System.assert(appAssociations1.equals(appAssociations2));
        System.assert(appAssociations3.equals(appAssociations4));
        System.assertEquals(appAssociations1.hashCode(), appAssociations2.hashCode());
        System.assertEquals(appAssociations3.hashCode(), appAssociations4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASAppAssociations appAssociations = new OASAppAssociations();
        Map<String, String> propertymappings = appAssociations.getPropertyMappings();
        System.assertEquals('customDomain', propertymappings.get('custom_domain'));
        System.assertEquals('iosApps', propertymappings.get('ios_apps'));
        System.assertEquals('androidApps', propertymappings.get('android_apps'));
        System.assertEquals('iosInstallPreference', propertymappings.get('ios_install_preference'));
        System.assertEquals('androidInstallPreference', propertymappings.get('android_install_preference'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASAppAssociations appAssociations = new OASAppAssociations();
        System.assertEquals(new List<OASAppAssociationDetail>(), appAssociations.iosApps);
        System.assertEquals(new List<OASAppAssociationDetail>(), appAssociations.androidApps);
        System.assertEquals(null, appAssociations.customDomain);
        System.assertEquals(null, appAssociations.iosInstallPreference);
        System.assertEquals(null, appAssociations.androidInstallPreference);
    }
}