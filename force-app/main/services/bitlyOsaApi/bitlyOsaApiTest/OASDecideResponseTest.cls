@isTest
private class OASDecideResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASDecideResponse decideResponse1 = OASDecideResponse.getExample();
        OASDecideResponse decideResponse2 = decideResponse1;
        OASDecideResponse decideResponse3 = new OASDecideResponse();
        OASDecideResponse decideResponse4 = decideResponse3;

        System.assert(decideResponse1.equals(decideResponse2));
        System.assert(decideResponse2.equals(decideResponse1));
        System.assert(decideResponse1.equals(decideResponse1));
        System.assert(decideResponse3.equals(decideResponse4));
        System.assert(decideResponse4.equals(decideResponse3));
        System.assert(decideResponse3.equals(decideResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDecideResponse decideResponse1 = OASDecideResponse.getExample();
        OASDecideResponse decideResponse2 = OASDecideResponse.getExample();
        OASDecideResponse decideResponse3 = new OASDecideResponse();
        OASDecideResponse decideResponse4 = new OASDecideResponse();

        System.assert(decideResponse1.equals(decideResponse2));
        System.assert(decideResponse2.equals(decideResponse1));
        System.assert(decideResponse3.equals(decideResponse4));
        System.assert(decideResponse4.equals(decideResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDecideResponse decideResponse1 = OASDecideResponse.getExample();
        OASDecideResponse decideResponse2 = new OASDecideResponse();

        System.assertEquals(false, decideResponse1.equals('foo'));
        System.assertEquals(false, decideResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDecideResponse decideResponse1 = OASDecideResponse.getExample();
        OASDecideResponse decideResponse2 = new OASDecideResponse();
        OASDecideResponse decideResponse3;

        System.assertEquals(false, decideResponse1.equals(decideResponse3));
        System.assertEquals(false, decideResponse2.equals(decideResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDecideResponse decideResponse1 = OASDecideResponse.getExample();
        OASDecideResponse decideResponse2 = new OASDecideResponse();

        System.assertEquals(decideResponse1.hashCode(), decideResponse1.hashCode());
        System.assertEquals(decideResponse2.hashCode(), decideResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDecideResponse decideResponse1 = OASDecideResponse.getExample();
        OASDecideResponse decideResponse2 = OASDecideResponse.getExample();
        OASDecideResponse decideResponse3 = new OASDecideResponse();
        OASDecideResponse decideResponse4 = new OASDecideResponse();

        System.assert(decideResponse1.equals(decideResponse2));
        System.assert(decideResponse3.equals(decideResponse4));
        System.assertEquals(decideResponse1.hashCode(), decideResponse2.hashCode());
        System.assertEquals(decideResponse3.hashCode(), decideResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASDecideResponse decideResponse = new OASDecideResponse();
        Map<String, String> propertymappings = decideResponse.getPropertyMappings();
        System.assertEquals('variationKey', propertymappings.get('variation_key'));
    }
}