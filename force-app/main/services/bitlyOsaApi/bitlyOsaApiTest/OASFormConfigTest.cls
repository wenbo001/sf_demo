@isTest
private class OASFormConfigTest {
    @isTest
    private static void equalsSameInstance() {
        OASFormConfig formConfig1 = OASFormConfig.getExample();
        OASFormConfig formConfig2 = formConfig1;
        OASFormConfig formConfig3 = new OASFormConfig();
        OASFormConfig formConfig4 = formConfig3;

        System.assert(formConfig1.equals(formConfig2));
        System.assert(formConfig2.equals(formConfig1));
        System.assert(formConfig1.equals(formConfig1));
        System.assert(formConfig3.equals(formConfig4));
        System.assert(formConfig4.equals(formConfig3));
        System.assert(formConfig3.equals(formConfig3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASFormConfig formConfig1 = OASFormConfig.getExample();
        OASFormConfig formConfig2 = OASFormConfig.getExample();
        OASFormConfig formConfig3 = new OASFormConfig();
        OASFormConfig formConfig4 = new OASFormConfig();

        System.assert(formConfig1.equals(formConfig2));
        System.assert(formConfig2.equals(formConfig1));
        System.assert(formConfig3.equals(formConfig4));
        System.assert(formConfig4.equals(formConfig3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASFormConfig formConfig1 = OASFormConfig.getExample();
        OASFormConfig formConfig2 = new OASFormConfig();

        System.assertEquals(false, formConfig1.equals('foo'));
        System.assertEquals(false, formConfig2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASFormConfig formConfig1 = OASFormConfig.getExample();
        OASFormConfig formConfig2 = new OASFormConfig();
        OASFormConfig formConfig3;

        System.assertEquals(false, formConfig1.equals(formConfig3));
        System.assertEquals(false, formConfig2.equals(formConfig3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASFormConfig formConfig1 = OASFormConfig.getExample();
        OASFormConfig formConfig2 = new OASFormConfig();

        System.assertEquals(formConfig1.hashCode(), formConfig1.hashCode());
        System.assertEquals(formConfig2.hashCode(), formConfig2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASFormConfig formConfig1 = OASFormConfig.getExample();
        OASFormConfig formConfig2 = OASFormConfig.getExample();
        OASFormConfig formConfig3 = new OASFormConfig();
        OASFormConfig formConfig4 = new OASFormConfig();

        System.assert(formConfig1.equals(formConfig2));
        System.assert(formConfig3.equals(formConfig4));
        System.assertEquals(formConfig1.hashCode(), formConfig2.hashCode());
        System.assertEquals(formConfig3.hashCode(), formConfig4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASFormConfig formConfig = new OASFormConfig();
        System.assertEquals(new List<OASFormSelectOptions>(), formConfig.options);
    }
}