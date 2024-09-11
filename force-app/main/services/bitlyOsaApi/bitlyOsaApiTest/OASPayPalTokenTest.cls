@isTest
private class OASPayPalTokenTest {
    @isTest
    private static void equalsSameInstance() {
        OASPayPalToken payPalToken1 = OASPayPalToken.getExample();
        OASPayPalToken payPalToken2 = payPalToken1;
        OASPayPalToken payPalToken3 = new OASPayPalToken();
        OASPayPalToken payPalToken4 = payPalToken3;

        System.assert(payPalToken1.equals(payPalToken2));
        System.assert(payPalToken2.equals(payPalToken1));
        System.assert(payPalToken1.equals(payPalToken1));
        System.assert(payPalToken3.equals(payPalToken4));
        System.assert(payPalToken4.equals(payPalToken3));
        System.assert(payPalToken3.equals(payPalToken3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPayPalToken payPalToken1 = OASPayPalToken.getExample();
        OASPayPalToken payPalToken2 = OASPayPalToken.getExample();
        OASPayPalToken payPalToken3 = new OASPayPalToken();
        OASPayPalToken payPalToken4 = new OASPayPalToken();

        System.assert(payPalToken1.equals(payPalToken2));
        System.assert(payPalToken2.equals(payPalToken1));
        System.assert(payPalToken3.equals(payPalToken4));
        System.assert(payPalToken4.equals(payPalToken3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPayPalToken payPalToken1 = OASPayPalToken.getExample();
        OASPayPalToken payPalToken2 = new OASPayPalToken();

        System.assertEquals(false, payPalToken1.equals('foo'));
        System.assertEquals(false, payPalToken2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPayPalToken payPalToken1 = OASPayPalToken.getExample();
        OASPayPalToken payPalToken2 = new OASPayPalToken();
        OASPayPalToken payPalToken3;

        System.assertEquals(false, payPalToken1.equals(payPalToken3));
        System.assertEquals(false, payPalToken2.equals(payPalToken3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPayPalToken payPalToken1 = OASPayPalToken.getExample();
        OASPayPalToken payPalToken2 = new OASPayPalToken();

        System.assertEquals(payPalToken1.hashCode(), payPalToken1.hashCode());
        System.assertEquals(payPalToken2.hashCode(), payPalToken2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPayPalToken payPalToken1 = OASPayPalToken.getExample();
        OASPayPalToken payPalToken2 = OASPayPalToken.getExample();
        OASPayPalToken payPalToken3 = new OASPayPalToken();
        OASPayPalToken payPalToken4 = new OASPayPalToken();

        System.assert(payPalToken1.equals(payPalToken2));
        System.assert(payPalToken3.equals(payPalToken4));
        System.assertEquals(payPalToken1.hashCode(), payPalToken2.hashCode());
        System.assertEquals(payPalToken3.hashCode(), payPalToken4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPayPalToken payPalToken = new OASPayPalToken();
        Map<String, String> propertymappings = payPalToken.getPropertyMappings();
        System.assertEquals('tokenId', propertymappings.get('token_id'));
    }
}