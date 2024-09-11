@isTest
private class OASPublicSSLCertTest {
    @isTest
    private static void equalsSameInstance() {
        OASPublicSSLCert publicSSLCert1 = OASPublicSSLCert.getExample();
        OASPublicSSLCert publicSSLCert2 = publicSSLCert1;
        OASPublicSSLCert publicSSLCert3 = new OASPublicSSLCert();
        OASPublicSSLCert publicSSLCert4 = publicSSLCert3;

        System.assert(publicSSLCert1.equals(publicSSLCert2));
        System.assert(publicSSLCert2.equals(publicSSLCert1));
        System.assert(publicSSLCert1.equals(publicSSLCert1));
        System.assert(publicSSLCert3.equals(publicSSLCert4));
        System.assert(publicSSLCert4.equals(publicSSLCert3));
        System.assert(publicSSLCert3.equals(publicSSLCert3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPublicSSLCert publicSSLCert1 = OASPublicSSLCert.getExample();
        OASPublicSSLCert publicSSLCert2 = OASPublicSSLCert.getExample();
        OASPublicSSLCert publicSSLCert3 = new OASPublicSSLCert();
        OASPublicSSLCert publicSSLCert4 = new OASPublicSSLCert();

        System.assert(publicSSLCert1.equals(publicSSLCert2));
        System.assert(publicSSLCert2.equals(publicSSLCert1));
        System.assert(publicSSLCert3.equals(publicSSLCert4));
        System.assert(publicSSLCert4.equals(publicSSLCert3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPublicSSLCert publicSSLCert1 = OASPublicSSLCert.getExample();
        OASPublicSSLCert publicSSLCert2 = new OASPublicSSLCert();

        System.assertEquals(false, publicSSLCert1.equals('foo'));
        System.assertEquals(false, publicSSLCert2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPublicSSLCert publicSSLCert1 = OASPublicSSLCert.getExample();
        OASPublicSSLCert publicSSLCert2 = new OASPublicSSLCert();
        OASPublicSSLCert publicSSLCert3;

        System.assertEquals(false, publicSSLCert1.equals(publicSSLCert3));
        System.assertEquals(false, publicSSLCert2.equals(publicSSLCert3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPublicSSLCert publicSSLCert1 = OASPublicSSLCert.getExample();
        OASPublicSSLCert publicSSLCert2 = new OASPublicSSLCert();

        System.assertEquals(publicSSLCert1.hashCode(), publicSSLCert1.hashCode());
        System.assertEquals(publicSSLCert2.hashCode(), publicSSLCert2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPublicSSLCert publicSSLCert1 = OASPublicSSLCert.getExample();
        OASPublicSSLCert publicSSLCert2 = OASPublicSSLCert.getExample();
        OASPublicSSLCert publicSSLCert3 = new OASPublicSSLCert();
        OASPublicSSLCert publicSSLCert4 = new OASPublicSSLCert();

        System.assert(publicSSLCert1.equals(publicSSLCert2));
        System.assert(publicSSLCert3.equals(publicSSLCert4));
        System.assertEquals(publicSSLCert1.hashCode(), publicSSLCert2.hashCode());
        System.assertEquals(publicSSLCert3.hashCode(), publicSSLCert4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPublicSSLCert publicSSLCert = new OASPublicSSLCert();
        Map<String, String> propertymappings = publicSSLCert.getPropertyMappings();
        System.assertEquals('validEnd', propertymappings.get('valid_end'));
        System.assertEquals('customCert', propertymappings.get('custom_cert'));
    }
}