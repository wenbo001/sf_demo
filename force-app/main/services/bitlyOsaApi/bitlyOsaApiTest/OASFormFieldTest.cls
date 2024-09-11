@isTest
private class OASFormFieldTest {
    @isTest
    private static void equalsSameInstance() {
        OASFormField formField1 = OASFormField.getExample();
        OASFormField formField2 = formField1;
        OASFormField formField3 = new OASFormField();
        OASFormField formField4 = formField3;

        System.assert(formField1.equals(formField2));
        System.assert(formField2.equals(formField1));
        System.assert(formField1.equals(formField1));
        System.assert(formField3.equals(formField4));
        System.assert(formField4.equals(formField3));
        System.assert(formField3.equals(formField3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASFormField formField1 = OASFormField.getExample();
        OASFormField formField2 = OASFormField.getExample();
        OASFormField formField3 = new OASFormField();
        OASFormField formField4 = new OASFormField();

        System.assert(formField1.equals(formField2));
        System.assert(formField2.equals(formField1));
        System.assert(formField3.equals(formField4));
        System.assert(formField4.equals(formField3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASFormField formField1 = OASFormField.getExample();
        OASFormField formField2 = new OASFormField();

        System.assertEquals(false, formField1.equals('foo'));
        System.assertEquals(false, formField2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASFormField formField1 = OASFormField.getExample();
        OASFormField formField2 = new OASFormField();
        OASFormField formField3;

        System.assertEquals(false, formField1.equals(formField3));
        System.assertEquals(false, formField2.equals(formField3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASFormField formField1 = OASFormField.getExample();
        OASFormField formField2 = new OASFormField();

        System.assertEquals(formField1.hashCode(), formField1.hashCode());
        System.assertEquals(formField2.hashCode(), formField2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASFormField formField1 = OASFormField.getExample();
        OASFormField formField2 = OASFormField.getExample();
        OASFormField formField3 = new OASFormField();
        OASFormField formField4 = new OASFormField();

        System.assert(formField1.equals(formField2));
        System.assert(formField3.equals(formField4));
        System.assertEquals(formField1.hashCode(), formField2.hashCode());
        System.assertEquals(formField3.hashCode(), formField4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASFormField formField = new OASFormField();
        Map<String, String> propertymappings = formField.getPropertyMappings();
        System.assertEquals('fieldType', propertymappings.get('field_type'));
    }
}