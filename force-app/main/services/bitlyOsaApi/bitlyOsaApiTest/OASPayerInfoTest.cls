@isTest
private class OASPayerInfoTest {
    @isTest
    private static void equalsSameInstance() {
        OASPayerInfo payerInfo1 = OASPayerInfo.getExample();
        OASPayerInfo payerInfo2 = payerInfo1;
        OASPayerInfo payerInfo3 = new OASPayerInfo();
        OASPayerInfo payerInfo4 = payerInfo3;

        System.assert(payerInfo1.equals(payerInfo2));
        System.assert(payerInfo2.equals(payerInfo1));
        System.assert(payerInfo1.equals(payerInfo1));
        System.assert(payerInfo3.equals(payerInfo4));
        System.assert(payerInfo4.equals(payerInfo3));
        System.assert(payerInfo3.equals(payerInfo3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPayerInfo payerInfo1 = OASPayerInfo.getExample();
        OASPayerInfo payerInfo2 = OASPayerInfo.getExample();
        OASPayerInfo payerInfo3 = new OASPayerInfo();
        OASPayerInfo payerInfo4 = new OASPayerInfo();

        System.assert(payerInfo1.equals(payerInfo2));
        System.assert(payerInfo2.equals(payerInfo1));
        System.assert(payerInfo3.equals(payerInfo4));
        System.assert(payerInfo4.equals(payerInfo3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPayerInfo payerInfo1 = OASPayerInfo.getExample();
        OASPayerInfo payerInfo2 = new OASPayerInfo();

        System.assertEquals(false, payerInfo1.equals('foo'));
        System.assertEquals(false, payerInfo2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPayerInfo payerInfo1 = OASPayerInfo.getExample();
        OASPayerInfo payerInfo2 = new OASPayerInfo();
        OASPayerInfo payerInfo3;

        System.assertEquals(false, payerInfo1.equals(payerInfo3));
        System.assertEquals(false, payerInfo2.equals(payerInfo3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPayerInfo payerInfo1 = OASPayerInfo.getExample();
        OASPayerInfo payerInfo2 = new OASPayerInfo();

        System.assertEquals(payerInfo1.hashCode(), payerInfo1.hashCode());
        System.assertEquals(payerInfo2.hashCode(), payerInfo2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPayerInfo payerInfo1 = OASPayerInfo.getExample();
        OASPayerInfo payerInfo2 = OASPayerInfo.getExample();
        OASPayerInfo payerInfo3 = new OASPayerInfo();
        OASPayerInfo payerInfo4 = new OASPayerInfo();

        System.assert(payerInfo1.equals(payerInfo2));
        System.assert(payerInfo3.equals(payerInfo4));
        System.assertEquals(payerInfo1.hashCode(), payerInfo2.hashCode());
        System.assertEquals(payerInfo3.hashCode(), payerInfo4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPayerInfo payerInfo = new OASPayerInfo();
        Map<String, String> propertymappings = payerInfo.getPropertyMappings();
        System.assertEquals('firstName', propertymappings.get('first_name'));
        System.assertEquals('lastName', propertymappings.get('last_name'));
        System.assertEquals('payerId', propertymappings.get('payer_id'));
    }
}