@isTest
private class OASMethodLimitTest {
    @isTest
    private static void equalsSameInstance() {
        OASMethodLimit methodLimit1 = OASMethodLimit.getExample();
        OASMethodLimit methodLimit2 = methodLimit1;
        OASMethodLimit methodLimit3 = new OASMethodLimit();
        OASMethodLimit methodLimit4 = methodLimit3;

        System.assert(methodLimit1.equals(methodLimit2));
        System.assert(methodLimit2.equals(methodLimit1));
        System.assert(methodLimit1.equals(methodLimit1));
        System.assert(methodLimit3.equals(methodLimit4));
        System.assert(methodLimit4.equals(methodLimit3));
        System.assert(methodLimit3.equals(methodLimit3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASMethodLimit methodLimit1 = OASMethodLimit.getExample();
        OASMethodLimit methodLimit2 = OASMethodLimit.getExample();
        OASMethodLimit methodLimit3 = new OASMethodLimit();
        OASMethodLimit methodLimit4 = new OASMethodLimit();

        System.assert(methodLimit1.equals(methodLimit2));
        System.assert(methodLimit2.equals(methodLimit1));
        System.assert(methodLimit3.equals(methodLimit4));
        System.assert(methodLimit4.equals(methodLimit3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASMethodLimit methodLimit1 = OASMethodLimit.getExample();
        OASMethodLimit methodLimit2 = new OASMethodLimit();

        System.assertEquals(false, methodLimit1.equals('foo'));
        System.assertEquals(false, methodLimit2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASMethodLimit methodLimit1 = OASMethodLimit.getExample();
        OASMethodLimit methodLimit2 = new OASMethodLimit();
        OASMethodLimit methodLimit3;

        System.assertEquals(false, methodLimit1.equals(methodLimit3));
        System.assertEquals(false, methodLimit2.equals(methodLimit3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASMethodLimit methodLimit1 = OASMethodLimit.getExample();
        OASMethodLimit methodLimit2 = new OASMethodLimit();

        System.assertEquals(methodLimit1.hashCode(), methodLimit1.hashCode());
        System.assertEquals(methodLimit2.hashCode(), methodLimit2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASMethodLimit methodLimit1 = OASMethodLimit.getExample();
        OASMethodLimit methodLimit2 = OASMethodLimit.getExample();
        OASMethodLimit methodLimit3 = new OASMethodLimit();
        OASMethodLimit methodLimit4 = new OASMethodLimit();

        System.assert(methodLimit1.equals(methodLimit2));
        System.assert(methodLimit3.equals(methodLimit4));
        System.assertEquals(methodLimit1.hashCode(), methodLimit2.hashCode());
        System.assertEquals(methodLimit3.hashCode(), methodLimit4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASMethodLimit methodLimit = new OASMethodLimit();
        Map<String, String> propertymappings = methodLimit.getPropertyMappings();
        System.assertEquals('r_limit', propertymappings.get('limit'));
    }
}