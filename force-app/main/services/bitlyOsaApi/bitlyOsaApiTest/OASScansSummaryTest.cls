@isTest
private class OASScansSummaryTest {
    @isTest
    private static void equalsSameInstance() {
        OASScansSummary scansSummary1 = OASScansSummary.getExample();
        OASScansSummary scansSummary2 = scansSummary1;
        OASScansSummary scansSummary3 = new OASScansSummary();
        OASScansSummary scansSummary4 = scansSummary3;

        System.assert(scansSummary1.equals(scansSummary2));
        System.assert(scansSummary2.equals(scansSummary1));
        System.assert(scansSummary1.equals(scansSummary1));
        System.assert(scansSummary3.equals(scansSummary4));
        System.assert(scansSummary4.equals(scansSummary3));
        System.assert(scansSummary3.equals(scansSummary3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASScansSummary scansSummary1 = OASScansSummary.getExample();
        OASScansSummary scansSummary2 = OASScansSummary.getExample();
        OASScansSummary scansSummary3 = new OASScansSummary();
        OASScansSummary scansSummary4 = new OASScansSummary();

        System.assert(scansSummary1.equals(scansSummary2));
        System.assert(scansSummary2.equals(scansSummary1));
        System.assert(scansSummary3.equals(scansSummary4));
        System.assert(scansSummary4.equals(scansSummary3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASScansSummary scansSummary1 = OASScansSummary.getExample();
        OASScansSummary scansSummary2 = new OASScansSummary();

        System.assertEquals(false, scansSummary1.equals('foo'));
        System.assertEquals(false, scansSummary2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASScansSummary scansSummary1 = OASScansSummary.getExample();
        OASScansSummary scansSummary2 = new OASScansSummary();
        OASScansSummary scansSummary3;

        System.assertEquals(false, scansSummary1.equals(scansSummary3));
        System.assertEquals(false, scansSummary2.equals(scansSummary3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASScansSummary scansSummary1 = OASScansSummary.getExample();
        OASScansSummary scansSummary2 = new OASScansSummary();

        System.assertEquals(scansSummary1.hashCode(), scansSummary1.hashCode());
        System.assertEquals(scansSummary2.hashCode(), scansSummary2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASScansSummary scansSummary1 = OASScansSummary.getExample();
        OASScansSummary scansSummary2 = OASScansSummary.getExample();
        OASScansSummary scansSummary3 = new OASScansSummary();
        OASScansSummary scansSummary4 = new OASScansSummary();

        System.assert(scansSummary1.equals(scansSummary2));
        System.assert(scansSummary3.equals(scansSummary4));
        System.assertEquals(scansSummary1.hashCode(), scansSummary2.hashCode());
        System.assertEquals(scansSummary3.hashCode(), scansSummary4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASScansSummary scansSummary = new OASScansSummary();
        Map<String, String> propertymappings = scansSummary.getPropertyMappings();
        System.assertEquals('totalScans', propertymappings.get('total_scans'));
        System.assertEquals('unitReference', propertymappings.get('unit_reference'));
    }
}