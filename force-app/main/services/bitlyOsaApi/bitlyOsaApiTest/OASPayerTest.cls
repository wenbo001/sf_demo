@isTest
private class OASPayerTest {
    @isTest
    private static void equalsSameInstance() {
        OASPayer payer1 = OASPayer.getExample();
        OASPayer payer2 = payer1;
        OASPayer payer3 = new OASPayer();
        OASPayer payer4 = payer3;

        System.assert(payer1.equals(payer2));
        System.assert(payer2.equals(payer1));
        System.assert(payer1.equals(payer1));
        System.assert(payer3.equals(payer4));
        System.assert(payer4.equals(payer3));
        System.assert(payer3.equals(payer3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPayer payer1 = OASPayer.getExample();
        OASPayer payer2 = OASPayer.getExample();
        OASPayer payer3 = new OASPayer();
        OASPayer payer4 = new OASPayer();

        System.assert(payer1.equals(payer2));
        System.assert(payer2.equals(payer1));
        System.assert(payer3.equals(payer4));
        System.assert(payer4.equals(payer3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPayer payer1 = OASPayer.getExample();
        OASPayer payer2 = new OASPayer();

        System.assertEquals(false, payer1.equals('foo'));
        System.assertEquals(false, payer2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPayer payer1 = OASPayer.getExample();
        OASPayer payer2 = new OASPayer();
        OASPayer payer3;

        System.assertEquals(false, payer1.equals(payer3));
        System.assertEquals(false, payer2.equals(payer3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPayer payer1 = OASPayer.getExample();
        OASPayer payer2 = new OASPayer();

        System.assertEquals(payer1.hashCode(), payer1.hashCode());
        System.assertEquals(payer2.hashCode(), payer2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPayer payer1 = OASPayer.getExample();
        OASPayer payer2 = OASPayer.getExample();
        OASPayer payer3 = new OASPayer();
        OASPayer payer4 = new OASPayer();

        System.assert(payer1.equals(payer2));
        System.assert(payer3.equals(payer4));
        System.assertEquals(payer1.hashCode(), payer2.hashCode());
        System.assertEquals(payer3.hashCode(), payer4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPayer payer = new OASPayer();
        Map<String, String> propertymappings = payer.getPropertyMappings();
        System.assertEquals('payerInfo', propertymappings.get('payer_info'));
    }
}