@isTest
private class OASFormPageTest {
    @isTest
    private static void equalsSameInstance() {
        OASFormPage formPage1 = OASFormPage.getExample();
        OASFormPage formPage2 = formPage1;
        OASFormPage formPage3 = new OASFormPage();
        OASFormPage formPage4 = formPage3;

        System.assert(formPage1.equals(formPage2));
        System.assert(formPage2.equals(formPage1));
        System.assert(formPage1.equals(formPage1));
        System.assert(formPage3.equals(formPage4));
        System.assert(formPage4.equals(formPage3));
        System.assert(formPage3.equals(formPage3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASFormPage formPage1 = OASFormPage.getExample();
        OASFormPage formPage2 = OASFormPage.getExample();
        OASFormPage formPage3 = new OASFormPage();
        OASFormPage formPage4 = new OASFormPage();

        System.assert(formPage1.equals(formPage2));
        System.assert(formPage2.equals(formPage1));
        System.assert(formPage3.equals(formPage4));
        System.assert(formPage4.equals(formPage3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASFormPage formPage1 = OASFormPage.getExample();
        OASFormPage formPage2 = new OASFormPage();

        System.assertEquals(false, formPage1.equals('foo'));
        System.assertEquals(false, formPage2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASFormPage formPage1 = OASFormPage.getExample();
        OASFormPage formPage2 = new OASFormPage();
        OASFormPage formPage3;

        System.assertEquals(false, formPage1.equals(formPage3));
        System.assertEquals(false, formPage2.equals(formPage3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASFormPage formPage1 = OASFormPage.getExample();
        OASFormPage formPage2 = new OASFormPage();

        System.assertEquals(formPage1.hashCode(), formPage1.hashCode());
        System.assertEquals(formPage2.hashCode(), formPage2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASFormPage formPage1 = OASFormPage.getExample();
        OASFormPage formPage2 = OASFormPage.getExample();
        OASFormPage formPage3 = new OASFormPage();
        OASFormPage formPage4 = new OASFormPage();

        System.assert(formPage1.equals(formPage2));
        System.assert(formPage3.equals(formPage4));
        System.assertEquals(formPage1.hashCode(), formPage2.hashCode());
        System.assertEquals(formPage3.hashCode(), formPage4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASFormPage formPage = new OASFormPage();
        System.assertEquals(new List<OASFormField>(), formPage.fields);
    }
}