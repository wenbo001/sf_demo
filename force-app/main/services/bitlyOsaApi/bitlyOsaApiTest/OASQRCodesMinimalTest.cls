@isTest
private class OASQRCodesMinimalTest {
    @isTest
    private static void equalsSameInstance() {
        OASQRCodesMinimal qrCodesMinimal1 = OASQRCodesMinimal.getExample();
        OASQRCodesMinimal qrCodesMinimal2 = qrCodesMinimal1;
        OASQRCodesMinimal qrCodesMinimal3 = new OASQRCodesMinimal();
        OASQRCodesMinimal qrCodesMinimal4 = qrCodesMinimal3;

        System.assert(qrCodesMinimal1.equals(qrCodesMinimal2));
        System.assert(qrCodesMinimal2.equals(qrCodesMinimal1));
        System.assert(qrCodesMinimal1.equals(qrCodesMinimal1));
        System.assert(qrCodesMinimal3.equals(qrCodesMinimal4));
        System.assert(qrCodesMinimal4.equals(qrCodesMinimal3));
        System.assert(qrCodesMinimal3.equals(qrCodesMinimal3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQRCodesMinimal qrCodesMinimal1 = OASQRCodesMinimal.getExample();
        OASQRCodesMinimal qrCodesMinimal2 = OASQRCodesMinimal.getExample();
        OASQRCodesMinimal qrCodesMinimal3 = new OASQRCodesMinimal();
        OASQRCodesMinimal qrCodesMinimal4 = new OASQRCodesMinimal();

        System.assert(qrCodesMinimal1.equals(qrCodesMinimal2));
        System.assert(qrCodesMinimal2.equals(qrCodesMinimal1));
        System.assert(qrCodesMinimal3.equals(qrCodesMinimal4));
        System.assert(qrCodesMinimal4.equals(qrCodesMinimal3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQRCodesMinimal qrCodesMinimal1 = OASQRCodesMinimal.getExample();
        OASQRCodesMinimal qrCodesMinimal2 = new OASQRCodesMinimal();

        System.assertEquals(false, qrCodesMinimal1.equals('foo'));
        System.assertEquals(false, qrCodesMinimal2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQRCodesMinimal qrCodesMinimal1 = OASQRCodesMinimal.getExample();
        OASQRCodesMinimal qrCodesMinimal2 = new OASQRCodesMinimal();
        OASQRCodesMinimal qrCodesMinimal3;

        System.assertEquals(false, qrCodesMinimal1.equals(qrCodesMinimal3));
        System.assertEquals(false, qrCodesMinimal2.equals(qrCodesMinimal3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQRCodesMinimal qrCodesMinimal1 = OASQRCodesMinimal.getExample();
        OASQRCodesMinimal qrCodesMinimal2 = new OASQRCodesMinimal();

        System.assertEquals(qrCodesMinimal1.hashCode(), qrCodesMinimal1.hashCode());
        System.assertEquals(qrCodesMinimal2.hashCode(), qrCodesMinimal2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQRCodesMinimal qrCodesMinimal1 = OASQRCodesMinimal.getExample();
        OASQRCodesMinimal qrCodesMinimal2 = OASQRCodesMinimal.getExample();
        OASQRCodesMinimal qrCodesMinimal3 = new OASQRCodesMinimal();
        OASQRCodesMinimal qrCodesMinimal4 = new OASQRCodesMinimal();

        System.assert(qrCodesMinimal1.equals(qrCodesMinimal2));
        System.assert(qrCodesMinimal3.equals(qrCodesMinimal4));
        System.assertEquals(qrCodesMinimal1.hashCode(), qrCodesMinimal2.hashCode());
        System.assertEquals(qrCodesMinimal3.hashCode(), qrCodesMinimal4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQRCodesMinimal qrCodesMinimal = new OASQRCodesMinimal();
        Map<String, String> propertymappings = qrCodesMinimal.getPropertyMappings();
        System.assertEquals('qrCodes', propertymappings.get('qr_codes'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASQRCodesMinimal qrCodesMinimal = new OASQRCodesMinimal();
        System.assertEquals(new List<OASQRCodeMinimal>(), qrCodesMinimal.qrCodes);
        System.assertEquals(null, qrCodesMinimal.pagination);
    }
}