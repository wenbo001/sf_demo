@isTest
private class OASQRCodesTest {
    @isTest
    private static void equalsSameInstance() {
        OASQRCodes qrCodes1 = OASQRCodes.getExample();
        OASQRCodes qrCodes2 = qrCodes1;
        OASQRCodes qrCodes3 = new OASQRCodes();
        OASQRCodes qrCodes4 = qrCodes3;

        System.assert(qrCodes1.equals(qrCodes2));
        System.assert(qrCodes2.equals(qrCodes1));
        System.assert(qrCodes1.equals(qrCodes1));
        System.assert(qrCodes3.equals(qrCodes4));
        System.assert(qrCodes4.equals(qrCodes3));
        System.assert(qrCodes3.equals(qrCodes3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQRCodes qrCodes1 = OASQRCodes.getExample();
        OASQRCodes qrCodes2 = OASQRCodes.getExample();
        OASQRCodes qrCodes3 = new OASQRCodes();
        OASQRCodes qrCodes4 = new OASQRCodes();

        System.assert(qrCodes1.equals(qrCodes2));
        System.assert(qrCodes2.equals(qrCodes1));
        System.assert(qrCodes3.equals(qrCodes4));
        System.assert(qrCodes4.equals(qrCodes3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQRCodes qrCodes1 = OASQRCodes.getExample();
        OASQRCodes qrCodes2 = new OASQRCodes();

        System.assertEquals(false, qrCodes1.equals('foo'));
        System.assertEquals(false, qrCodes2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQRCodes qrCodes1 = OASQRCodes.getExample();
        OASQRCodes qrCodes2 = new OASQRCodes();
        OASQRCodes qrCodes3;

        System.assertEquals(false, qrCodes1.equals(qrCodes3));
        System.assertEquals(false, qrCodes2.equals(qrCodes3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQRCodes qrCodes1 = OASQRCodes.getExample();
        OASQRCodes qrCodes2 = new OASQRCodes();

        System.assertEquals(qrCodes1.hashCode(), qrCodes1.hashCode());
        System.assertEquals(qrCodes2.hashCode(), qrCodes2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQRCodes qrCodes1 = OASQRCodes.getExample();
        OASQRCodes qrCodes2 = OASQRCodes.getExample();
        OASQRCodes qrCodes3 = new OASQRCodes();
        OASQRCodes qrCodes4 = new OASQRCodes();

        System.assert(qrCodes1.equals(qrCodes2));
        System.assert(qrCodes3.equals(qrCodes4));
        System.assertEquals(qrCodes1.hashCode(), qrCodes2.hashCode());
        System.assertEquals(qrCodes3.hashCode(), qrCodes4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQRCodes qrCodes = new OASQRCodes();
        Map<String, String> propertymappings = qrCodes.getPropertyMappings();
        System.assertEquals('qrCodes', propertymappings.get('qr_codes'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASQRCodes qrCodes = new OASQRCodes();
        System.assertEquals(new List<OASFullQRCodeWithScans>(), qrCodes.qrCodes);
        System.assertEquals(null, qrCodes.size);
        System.assertEquals(null, qrCodes.page);
        System.assertEquals(null, qrCodes.total);
    }
}