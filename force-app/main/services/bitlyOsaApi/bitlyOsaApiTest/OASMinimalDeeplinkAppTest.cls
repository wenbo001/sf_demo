@isTest
private class OASMinimalDeeplinkAppTest {
    @isTest
    private static void equalsSameInstance() {
        OASMinimalDeeplinkApp minimalDeeplinkApp1 = OASMinimalDeeplinkApp.getExample();
        OASMinimalDeeplinkApp minimalDeeplinkApp2 = minimalDeeplinkApp1;
        OASMinimalDeeplinkApp minimalDeeplinkApp3 = new OASMinimalDeeplinkApp();
        OASMinimalDeeplinkApp minimalDeeplinkApp4 = minimalDeeplinkApp3;

        System.assert(minimalDeeplinkApp1.equals(minimalDeeplinkApp2));
        System.assert(minimalDeeplinkApp2.equals(minimalDeeplinkApp1));
        System.assert(minimalDeeplinkApp1.equals(minimalDeeplinkApp1));
        System.assert(minimalDeeplinkApp3.equals(minimalDeeplinkApp4));
        System.assert(minimalDeeplinkApp4.equals(minimalDeeplinkApp3));
        System.assert(minimalDeeplinkApp3.equals(minimalDeeplinkApp3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASMinimalDeeplinkApp minimalDeeplinkApp1 = OASMinimalDeeplinkApp.getExample();
        OASMinimalDeeplinkApp minimalDeeplinkApp2 = OASMinimalDeeplinkApp.getExample();
        OASMinimalDeeplinkApp minimalDeeplinkApp3 = new OASMinimalDeeplinkApp();
        OASMinimalDeeplinkApp minimalDeeplinkApp4 = new OASMinimalDeeplinkApp();

        System.assert(minimalDeeplinkApp1.equals(minimalDeeplinkApp2));
        System.assert(minimalDeeplinkApp2.equals(minimalDeeplinkApp1));
        System.assert(minimalDeeplinkApp3.equals(minimalDeeplinkApp4));
        System.assert(minimalDeeplinkApp4.equals(minimalDeeplinkApp3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASMinimalDeeplinkApp minimalDeeplinkApp1 = OASMinimalDeeplinkApp.getExample();
        OASMinimalDeeplinkApp minimalDeeplinkApp2 = new OASMinimalDeeplinkApp();

        System.assertEquals(false, minimalDeeplinkApp1.equals('foo'));
        System.assertEquals(false, minimalDeeplinkApp2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASMinimalDeeplinkApp minimalDeeplinkApp1 = OASMinimalDeeplinkApp.getExample();
        OASMinimalDeeplinkApp minimalDeeplinkApp2 = new OASMinimalDeeplinkApp();
        OASMinimalDeeplinkApp minimalDeeplinkApp3;

        System.assertEquals(false, minimalDeeplinkApp1.equals(minimalDeeplinkApp3));
        System.assertEquals(false, minimalDeeplinkApp2.equals(minimalDeeplinkApp3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASMinimalDeeplinkApp minimalDeeplinkApp1 = OASMinimalDeeplinkApp.getExample();
        OASMinimalDeeplinkApp minimalDeeplinkApp2 = new OASMinimalDeeplinkApp();

        System.assertEquals(minimalDeeplinkApp1.hashCode(), minimalDeeplinkApp1.hashCode());
        System.assertEquals(minimalDeeplinkApp2.hashCode(), minimalDeeplinkApp2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASMinimalDeeplinkApp minimalDeeplinkApp1 = OASMinimalDeeplinkApp.getExample();
        OASMinimalDeeplinkApp minimalDeeplinkApp2 = OASMinimalDeeplinkApp.getExample();
        OASMinimalDeeplinkApp minimalDeeplinkApp3 = new OASMinimalDeeplinkApp();
        OASMinimalDeeplinkApp minimalDeeplinkApp4 = new OASMinimalDeeplinkApp();

        System.assert(minimalDeeplinkApp1.equals(minimalDeeplinkApp2));
        System.assert(minimalDeeplinkApp3.equals(minimalDeeplinkApp4));
        System.assertEquals(minimalDeeplinkApp1.hashCode(), minimalDeeplinkApp2.hashCode());
        System.assertEquals(minimalDeeplinkApp3.hashCode(), minimalDeeplinkApp4.hashCode());
    }
}