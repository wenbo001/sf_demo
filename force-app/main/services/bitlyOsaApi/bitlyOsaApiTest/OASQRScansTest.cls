@isTest
private class OASQRScansTest {
    @isTest
    private static void equalsSameInstance() {
        OASQRScans qrScans1 = OASQRScans.getExample();
        OASQRScans qrScans2 = qrScans1;
        OASQRScans qrScans3 = new OASQRScans();
        OASQRScans qrScans4 = qrScans3;

        System.assert(qrScans1.equals(qrScans2));
        System.assert(qrScans2.equals(qrScans1));
        System.assert(qrScans1.equals(qrScans1));
        System.assert(qrScans3.equals(qrScans4));
        System.assert(qrScans4.equals(qrScans3));
        System.assert(qrScans3.equals(qrScans3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQRScans qrScans1 = OASQRScans.getExample();
        OASQRScans qrScans2 = OASQRScans.getExample();
        OASQRScans qrScans3 = new OASQRScans();
        OASQRScans qrScans4 = new OASQRScans();

        System.assert(qrScans1.equals(qrScans2));
        System.assert(qrScans2.equals(qrScans1));
        System.assert(qrScans3.equals(qrScans4));
        System.assert(qrScans4.equals(qrScans3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQRScans qrScans1 = OASQRScans.getExample();
        OASQRScans qrScans2 = new OASQRScans();

        System.assertEquals(false, qrScans1.equals('foo'));
        System.assertEquals(false, qrScans2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQRScans qrScans1 = OASQRScans.getExample();
        OASQRScans qrScans2 = new OASQRScans();
        OASQRScans qrScans3;

        System.assertEquals(false, qrScans1.equals(qrScans3));
        System.assertEquals(false, qrScans2.equals(qrScans3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQRScans qrScans1 = OASQRScans.getExample();
        OASQRScans qrScans2 = new OASQRScans();

        System.assertEquals(qrScans1.hashCode(), qrScans1.hashCode());
        System.assertEquals(qrScans2.hashCode(), qrScans2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQRScans qrScans1 = OASQRScans.getExample();
        OASQRScans qrScans2 = OASQRScans.getExample();
        OASQRScans qrScans3 = new OASQRScans();
        OASQRScans qrScans4 = new OASQRScans();

        System.assert(qrScans1.equals(qrScans2));
        System.assert(qrScans3.equals(qrScans4));
        System.assertEquals(qrScans1.hashCode(), qrScans2.hashCode());
        System.assertEquals(qrScans3.hashCode(), qrScans4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQRScans qrScans = new OASQRScans();
        Map<String, String> propertymappings = qrScans.getPropertyMappings();
        System.assertEquals('r_date', propertymappings.get('date'));
    }
}