@isTest
private class OASBadGatewayTest {
    @isTest
    private static void equalsSameInstance() {
        OASBadGateway badGateway1 = OASBadGateway.getExample();
        OASBadGateway badGateway2 = badGateway1;
        OASBadGateway badGateway3 = new OASBadGateway();
        OASBadGateway badGateway4 = badGateway3;

        System.assert(badGateway1.equals(badGateway2));
        System.assert(badGateway2.equals(badGateway1));
        System.assert(badGateway1.equals(badGateway1));
        System.assert(badGateway3.equals(badGateway4));
        System.assert(badGateway4.equals(badGateway3));
        System.assert(badGateway3.equals(badGateway3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBadGateway badGateway1 = OASBadGateway.getExample();
        OASBadGateway badGateway2 = OASBadGateway.getExample();
        OASBadGateway badGateway3 = new OASBadGateway();
        OASBadGateway badGateway4 = new OASBadGateway();

        System.assert(badGateway1.equals(badGateway2));
        System.assert(badGateway2.equals(badGateway1));
        System.assert(badGateway3.equals(badGateway4));
        System.assert(badGateway4.equals(badGateway3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBadGateway badGateway1 = OASBadGateway.getExample();
        OASBadGateway badGateway2 = new OASBadGateway();

        System.assertEquals(false, badGateway1.equals('foo'));
        System.assertEquals(false, badGateway2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBadGateway badGateway1 = OASBadGateway.getExample();
        OASBadGateway badGateway2 = new OASBadGateway();
        OASBadGateway badGateway3;

        System.assertEquals(false, badGateway1.equals(badGateway3));
        System.assertEquals(false, badGateway2.equals(badGateway3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBadGateway badGateway1 = OASBadGateway.getExample();
        OASBadGateway badGateway2 = new OASBadGateway();

        System.assertEquals(badGateway1.hashCode(), badGateway1.hashCode());
        System.assertEquals(badGateway2.hashCode(), badGateway2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBadGateway badGateway1 = OASBadGateway.getExample();
        OASBadGateway badGateway2 = OASBadGateway.getExample();
        OASBadGateway badGateway3 = new OASBadGateway();
        OASBadGateway badGateway4 = new OASBadGateway();

        System.assert(badGateway1.equals(badGateway2));
        System.assert(badGateway3.equals(badGateway4));
        System.assertEquals(badGateway1.hashCode(), badGateway2.hashCode());
        System.assertEquals(badGateway3.hashCode(), badGateway4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASBadGateway badGateway = new OASBadGateway();
        System.assertEquals(new List<OASFieldError>(), badGateway.errors);
        System.assertEquals(null, badGateway.message);
        System.assertEquals(null, badGateway.description);
        System.assertEquals(null, badGateway.resource);
    }
}