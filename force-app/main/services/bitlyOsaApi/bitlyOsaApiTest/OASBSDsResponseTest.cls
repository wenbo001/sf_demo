@isTest
private class OASBSDsResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASBSDsResponse bsDsResponse1 = OASBSDsResponse.getExample();
        OASBSDsResponse bsDsResponse2 = bsDsResponse1;
        OASBSDsResponse bsDsResponse3 = new OASBSDsResponse();
        OASBSDsResponse bsDsResponse4 = bsDsResponse3;

        System.assert(bsDsResponse1.equals(bsDsResponse2));
        System.assert(bsDsResponse2.equals(bsDsResponse1));
        System.assert(bsDsResponse1.equals(bsDsResponse1));
        System.assert(bsDsResponse3.equals(bsDsResponse4));
        System.assert(bsDsResponse4.equals(bsDsResponse3));
        System.assert(bsDsResponse3.equals(bsDsResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBSDsResponse bsDsResponse1 = OASBSDsResponse.getExample();
        OASBSDsResponse bsDsResponse2 = OASBSDsResponse.getExample();
        OASBSDsResponse bsDsResponse3 = new OASBSDsResponse();
        OASBSDsResponse bsDsResponse4 = new OASBSDsResponse();

        System.assert(bsDsResponse1.equals(bsDsResponse2));
        System.assert(bsDsResponse2.equals(bsDsResponse1));
        System.assert(bsDsResponse3.equals(bsDsResponse4));
        System.assert(bsDsResponse4.equals(bsDsResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBSDsResponse bsDsResponse1 = OASBSDsResponse.getExample();
        OASBSDsResponse bsDsResponse2 = new OASBSDsResponse();

        System.assertEquals(false, bsDsResponse1.equals('foo'));
        System.assertEquals(false, bsDsResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBSDsResponse bsDsResponse1 = OASBSDsResponse.getExample();
        OASBSDsResponse bsDsResponse2 = new OASBSDsResponse();
        OASBSDsResponse bsDsResponse3;

        System.assertEquals(false, bsDsResponse1.equals(bsDsResponse3));
        System.assertEquals(false, bsDsResponse2.equals(bsDsResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBSDsResponse bsDsResponse1 = OASBSDsResponse.getExample();
        OASBSDsResponse bsDsResponse2 = new OASBSDsResponse();

        System.assertEquals(bsDsResponse1.hashCode(), bsDsResponse1.hashCode());
        System.assertEquals(bsDsResponse2.hashCode(), bsDsResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBSDsResponse bsDsResponse1 = OASBSDsResponse.getExample();
        OASBSDsResponse bsDsResponse2 = OASBSDsResponse.getExample();
        OASBSDsResponse bsDsResponse3 = new OASBSDsResponse();
        OASBSDsResponse bsDsResponse4 = new OASBSDsResponse();

        System.assert(bsDsResponse1.equals(bsDsResponse2));
        System.assert(bsDsResponse3.equals(bsDsResponse4));
        System.assertEquals(bsDsResponse1.hashCode(), bsDsResponse2.hashCode());
        System.assertEquals(bsDsResponse3.hashCode(), bsDsResponse4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASBSDsResponse bsDsResponse = new OASBSDsResponse();
        System.assertEquals(new List<String>(), bsDsResponse.bsds);
    }
}