@isTest
private class OASScansTest {
    @isTest
    private static void equalsSameInstance() {
        OASScans scans1 = OASScans.getExample();
        OASScans scans2 = scans1;
        OASScans scans3 = new OASScans();
        OASScans scans4 = scans3;

        System.assert(scans1.equals(scans2));
        System.assert(scans2.equals(scans1));
        System.assert(scans1.equals(scans1));
        System.assert(scans3.equals(scans4));
        System.assert(scans4.equals(scans3));
        System.assert(scans3.equals(scans3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASScans scans1 = OASScans.getExample();
        OASScans scans2 = OASScans.getExample();
        OASScans scans3 = new OASScans();
        OASScans scans4 = new OASScans();

        System.assert(scans1.equals(scans2));
        System.assert(scans2.equals(scans1));
        System.assert(scans3.equals(scans4));
        System.assert(scans4.equals(scans3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASScans scans1 = OASScans.getExample();
        OASScans scans2 = new OASScans();

        System.assertEquals(false, scans1.equals('foo'));
        System.assertEquals(false, scans2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASScans scans1 = OASScans.getExample();
        OASScans scans2 = new OASScans();
        OASScans scans3;

        System.assertEquals(false, scans1.equals(scans3));
        System.assertEquals(false, scans2.equals(scans3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASScans scans1 = OASScans.getExample();
        OASScans scans2 = new OASScans();

        System.assertEquals(scans1.hashCode(), scans1.hashCode());
        System.assertEquals(scans2.hashCode(), scans2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASScans scans1 = OASScans.getExample();
        OASScans scans2 = OASScans.getExample();
        OASScans scans3 = new OASScans();
        OASScans scans4 = new OASScans();

        System.assert(scans1.equals(scans2));
        System.assert(scans3.equals(scans4));
        System.assertEquals(scans1.hashCode(), scans2.hashCode());
        System.assertEquals(scans3.hashCode(), scans4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASScans scans = new OASScans();
        Map<String, String> propertymappings = scans.getPropertyMappings();
        System.assertEquals('qrScans', propertymappings.get('qr_scans'));
        System.assertEquals('unitReference', propertymappings.get('unit_reference'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASScans scans = new OASScans();
        System.assertEquals(new List<OASQRScans>(), scans.qrScans);
        System.assertEquals(null, scans.units);
        System.assertEquals(null, scans.unit);
        System.assertEquals(null, scans.unitReference);
    }
}