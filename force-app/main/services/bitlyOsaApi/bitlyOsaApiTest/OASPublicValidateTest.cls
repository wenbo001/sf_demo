@isTest
private class OASPublicValidateTest {
    @isTest
    private static void equalsSameInstance() {
        OASPublicValidate publicValidate1 = OASPublicValidate.getExample();
        OASPublicValidate publicValidate2 = publicValidate1;
        OASPublicValidate publicValidate3 = new OASPublicValidate();
        OASPublicValidate publicValidate4 = publicValidate3;

        System.assert(publicValidate1.equals(publicValidate2));
        System.assert(publicValidate2.equals(publicValidate1));
        System.assert(publicValidate1.equals(publicValidate1));
        System.assert(publicValidate3.equals(publicValidate4));
        System.assert(publicValidate4.equals(publicValidate3));
        System.assert(publicValidate3.equals(publicValidate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPublicValidate publicValidate1 = OASPublicValidate.getExample();
        OASPublicValidate publicValidate2 = OASPublicValidate.getExample();
        OASPublicValidate publicValidate3 = new OASPublicValidate();
        OASPublicValidate publicValidate4 = new OASPublicValidate();

        System.assert(publicValidate1.equals(publicValidate2));
        System.assert(publicValidate2.equals(publicValidate1));
        System.assert(publicValidate3.equals(publicValidate4));
        System.assert(publicValidate4.equals(publicValidate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPublicValidate publicValidate1 = OASPublicValidate.getExample();
        OASPublicValidate publicValidate2 = new OASPublicValidate();

        System.assertEquals(false, publicValidate1.equals('foo'));
        System.assertEquals(false, publicValidate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPublicValidate publicValidate1 = OASPublicValidate.getExample();
        OASPublicValidate publicValidate2 = new OASPublicValidate();
        OASPublicValidate publicValidate3;

        System.assertEquals(false, publicValidate1.equals(publicValidate3));
        System.assertEquals(false, publicValidate2.equals(publicValidate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPublicValidate publicValidate1 = OASPublicValidate.getExample();
        OASPublicValidate publicValidate2 = new OASPublicValidate();

        System.assertEquals(publicValidate1.hashCode(), publicValidate1.hashCode());
        System.assertEquals(publicValidate2.hashCode(), publicValidate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPublicValidate publicValidate1 = OASPublicValidate.getExample();
        OASPublicValidate publicValidate2 = OASPublicValidate.getExample();
        OASPublicValidate publicValidate3 = new OASPublicValidate();
        OASPublicValidate publicValidate4 = new OASPublicValidate();

        System.assert(publicValidate1.equals(publicValidate2));
        System.assert(publicValidate3.equals(publicValidate4));
        System.assertEquals(publicValidate1.hashCode(), publicValidate2.hashCode());
        System.assertEquals(publicValidate3.hashCode(), publicValidate4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPublicValidate publicValidate = new OASPublicValidate();
        Map<String, String> propertymappings = publicValidate.getPropertyMappings();
        System.assertEquals('organizationGuid', propertymappings.get('organization_guid'));
        System.assertEquals('customDomain', propertymappings.get('custom_domain'));
    }
}