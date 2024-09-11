@isTest
private class OASAuthorizationTest {
    @isTest
    private static void equalsSameInstance() {
        OASAuthorization authorization1 = OASAuthorization.getExample();
        OASAuthorization authorization2 = authorization1;
        OASAuthorization authorization3 = new OASAuthorization();
        OASAuthorization authorization4 = authorization3;

        System.assert(authorization1.equals(authorization2));
        System.assert(authorization2.equals(authorization1));
        System.assert(authorization1.equals(authorization1));
        System.assert(authorization3.equals(authorization4));
        System.assert(authorization4.equals(authorization3));
        System.assert(authorization3.equals(authorization3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAuthorization authorization1 = OASAuthorization.getExample();
        OASAuthorization authorization2 = OASAuthorization.getExample();
        OASAuthorization authorization3 = new OASAuthorization();
        OASAuthorization authorization4 = new OASAuthorization();

        System.assert(authorization1.equals(authorization2));
        System.assert(authorization2.equals(authorization1));
        System.assert(authorization3.equals(authorization4));
        System.assert(authorization4.equals(authorization3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAuthorization authorization1 = OASAuthorization.getExample();
        OASAuthorization authorization2 = new OASAuthorization();

        System.assertEquals(false, authorization1.equals('foo'));
        System.assertEquals(false, authorization2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAuthorization authorization1 = OASAuthorization.getExample();
        OASAuthorization authorization2 = new OASAuthorization();
        OASAuthorization authorization3;

        System.assertEquals(false, authorization1.equals(authorization3));
        System.assertEquals(false, authorization2.equals(authorization3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAuthorization authorization1 = OASAuthorization.getExample();
        OASAuthorization authorization2 = new OASAuthorization();

        System.assertEquals(authorization1.hashCode(), authorization1.hashCode());
        System.assertEquals(authorization2.hashCode(), authorization2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAuthorization authorization1 = OASAuthorization.getExample();
        OASAuthorization authorization2 = OASAuthorization.getExample();
        OASAuthorization authorization3 = new OASAuthorization();
        OASAuthorization authorization4 = new OASAuthorization();

        System.assert(authorization1.equals(authorization2));
        System.assert(authorization3.equals(authorization4));
        System.assertEquals(authorization1.hashCode(), authorization2.hashCode());
        System.assertEquals(authorization3.hashCode(), authorization4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASAuthorization authorization = new OASAuthorization();
        Map<String, String> propertymappings = authorization.getPropertyMappings();
        System.assertEquals('clientId', propertymappings.get('client_id'));
    }
}