@isTest
private class OASFormSelectOptionsTest {
    @isTest
    private static void equalsSameInstance() {
        OASFormSelectOptions formSelectOptions1 = OASFormSelectOptions.getExample();
        OASFormSelectOptions formSelectOptions2 = formSelectOptions1;
        OASFormSelectOptions formSelectOptions3 = new OASFormSelectOptions();
        OASFormSelectOptions formSelectOptions4 = formSelectOptions3;

        System.assert(formSelectOptions1.equals(formSelectOptions2));
        System.assert(formSelectOptions2.equals(formSelectOptions1));
        System.assert(formSelectOptions1.equals(formSelectOptions1));
        System.assert(formSelectOptions3.equals(formSelectOptions4));
        System.assert(formSelectOptions4.equals(formSelectOptions3));
        System.assert(formSelectOptions3.equals(formSelectOptions3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASFormSelectOptions formSelectOptions1 = OASFormSelectOptions.getExample();
        OASFormSelectOptions formSelectOptions2 = OASFormSelectOptions.getExample();
        OASFormSelectOptions formSelectOptions3 = new OASFormSelectOptions();
        OASFormSelectOptions formSelectOptions4 = new OASFormSelectOptions();

        System.assert(formSelectOptions1.equals(formSelectOptions2));
        System.assert(formSelectOptions2.equals(formSelectOptions1));
        System.assert(formSelectOptions3.equals(formSelectOptions4));
        System.assert(formSelectOptions4.equals(formSelectOptions3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASFormSelectOptions formSelectOptions1 = OASFormSelectOptions.getExample();
        OASFormSelectOptions formSelectOptions2 = new OASFormSelectOptions();

        System.assertEquals(false, formSelectOptions1.equals('foo'));
        System.assertEquals(false, formSelectOptions2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASFormSelectOptions formSelectOptions1 = OASFormSelectOptions.getExample();
        OASFormSelectOptions formSelectOptions2 = new OASFormSelectOptions();
        OASFormSelectOptions formSelectOptions3;

        System.assertEquals(false, formSelectOptions1.equals(formSelectOptions3));
        System.assertEquals(false, formSelectOptions2.equals(formSelectOptions3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASFormSelectOptions formSelectOptions1 = OASFormSelectOptions.getExample();
        OASFormSelectOptions formSelectOptions2 = new OASFormSelectOptions();

        System.assertEquals(formSelectOptions1.hashCode(), formSelectOptions1.hashCode());
        System.assertEquals(formSelectOptions2.hashCode(), formSelectOptions2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASFormSelectOptions formSelectOptions1 = OASFormSelectOptions.getExample();
        OASFormSelectOptions formSelectOptions2 = OASFormSelectOptions.getExample();
        OASFormSelectOptions formSelectOptions3 = new OASFormSelectOptions();
        OASFormSelectOptions formSelectOptions4 = new OASFormSelectOptions();

        System.assert(formSelectOptions1.equals(formSelectOptions2));
        System.assert(formSelectOptions3.equals(formSelectOptions4));
        System.assertEquals(formSelectOptions1.hashCode(), formSelectOptions2.hashCode());
        System.assertEquals(formSelectOptions3.hashCode(), formSelectOptions4.hashCode());
    }
}