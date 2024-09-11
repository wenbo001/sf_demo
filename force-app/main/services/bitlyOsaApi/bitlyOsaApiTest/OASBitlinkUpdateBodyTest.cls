@isTest
private class OASBitlinkUpdateBodyTest {
    @isTest
    private static void equalsSameInstance() {
        OASBitlinkUpdateBody bitlinkUpdateBody1 = OASBitlinkUpdateBody.getExample();
        OASBitlinkUpdateBody bitlinkUpdateBody2 = bitlinkUpdateBody1;
        OASBitlinkUpdateBody bitlinkUpdateBody3 = new OASBitlinkUpdateBody();
        OASBitlinkUpdateBody bitlinkUpdateBody4 = bitlinkUpdateBody3;

        System.assert(bitlinkUpdateBody1.equals(bitlinkUpdateBody2));
        System.assert(bitlinkUpdateBody2.equals(bitlinkUpdateBody1));
        System.assert(bitlinkUpdateBody1.equals(bitlinkUpdateBody1));
        System.assert(bitlinkUpdateBody3.equals(bitlinkUpdateBody4));
        System.assert(bitlinkUpdateBody4.equals(bitlinkUpdateBody3));
        System.assert(bitlinkUpdateBody3.equals(bitlinkUpdateBody3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBitlinkUpdateBody bitlinkUpdateBody1 = OASBitlinkUpdateBody.getExample();
        OASBitlinkUpdateBody bitlinkUpdateBody2 = OASBitlinkUpdateBody.getExample();
        OASBitlinkUpdateBody bitlinkUpdateBody3 = new OASBitlinkUpdateBody();
        OASBitlinkUpdateBody bitlinkUpdateBody4 = new OASBitlinkUpdateBody();

        System.assert(bitlinkUpdateBody1.equals(bitlinkUpdateBody2));
        System.assert(bitlinkUpdateBody2.equals(bitlinkUpdateBody1));
        System.assert(bitlinkUpdateBody3.equals(bitlinkUpdateBody4));
        System.assert(bitlinkUpdateBody4.equals(bitlinkUpdateBody3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBitlinkUpdateBody bitlinkUpdateBody1 = OASBitlinkUpdateBody.getExample();
        OASBitlinkUpdateBody bitlinkUpdateBody2 = new OASBitlinkUpdateBody();

        System.assertEquals(false, bitlinkUpdateBody1.equals('foo'));
        System.assertEquals(false, bitlinkUpdateBody2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBitlinkUpdateBody bitlinkUpdateBody1 = OASBitlinkUpdateBody.getExample();
        OASBitlinkUpdateBody bitlinkUpdateBody2 = new OASBitlinkUpdateBody();
        OASBitlinkUpdateBody bitlinkUpdateBody3;

        System.assertEquals(false, bitlinkUpdateBody1.equals(bitlinkUpdateBody3));
        System.assertEquals(false, bitlinkUpdateBody2.equals(bitlinkUpdateBody3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBitlinkUpdateBody bitlinkUpdateBody1 = OASBitlinkUpdateBody.getExample();
        OASBitlinkUpdateBody bitlinkUpdateBody2 = new OASBitlinkUpdateBody();

        System.assertEquals(bitlinkUpdateBody1.hashCode(), bitlinkUpdateBody1.hashCode());
        System.assertEquals(bitlinkUpdateBody2.hashCode(), bitlinkUpdateBody2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBitlinkUpdateBody bitlinkUpdateBody1 = OASBitlinkUpdateBody.getExample();
        OASBitlinkUpdateBody bitlinkUpdateBody2 = OASBitlinkUpdateBody.getExample();
        OASBitlinkUpdateBody bitlinkUpdateBody3 = new OASBitlinkUpdateBody();
        OASBitlinkUpdateBody bitlinkUpdateBody4 = new OASBitlinkUpdateBody();

        System.assert(bitlinkUpdateBody1.equals(bitlinkUpdateBody2));
        System.assert(bitlinkUpdateBody3.equals(bitlinkUpdateBody4));
        System.assertEquals(bitlinkUpdateBody1.hashCode(), bitlinkUpdateBody2.hashCode());
        System.assertEquals(bitlinkUpdateBody3.hashCode(), bitlinkUpdateBody4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASBitlinkUpdateBody bitlinkUpdateBody = new OASBitlinkUpdateBody();
        System.assertEquals(new List<String>(), bitlinkUpdateBody.tags);
        System.assertEquals(new List<OASDeeplinkRule>(), bitlinkUpdateBody.deeplinks);
        System.assertEquals(null, bitlinkUpdateBody.title);
        System.assertEquals(null, bitlinkUpdateBody.archived);
    }
}