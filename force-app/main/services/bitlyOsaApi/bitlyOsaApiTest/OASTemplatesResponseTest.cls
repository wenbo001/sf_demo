@isTest
private class OASTemplatesResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASTemplatesResponse templatesResponse1 = OASTemplatesResponse.getExample();
        OASTemplatesResponse templatesResponse2 = templatesResponse1;
        OASTemplatesResponse templatesResponse3 = new OASTemplatesResponse();
        OASTemplatesResponse templatesResponse4 = templatesResponse3;

        System.assert(templatesResponse1.equals(templatesResponse2));
        System.assert(templatesResponse2.equals(templatesResponse1));
        System.assert(templatesResponse1.equals(templatesResponse1));
        System.assert(templatesResponse3.equals(templatesResponse4));
        System.assert(templatesResponse4.equals(templatesResponse3));
        System.assert(templatesResponse3.equals(templatesResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASTemplatesResponse templatesResponse1 = OASTemplatesResponse.getExample();
        OASTemplatesResponse templatesResponse2 = OASTemplatesResponse.getExample();
        OASTemplatesResponse templatesResponse3 = new OASTemplatesResponse();
        OASTemplatesResponse templatesResponse4 = new OASTemplatesResponse();

        System.assert(templatesResponse1.equals(templatesResponse2));
        System.assert(templatesResponse2.equals(templatesResponse1));
        System.assert(templatesResponse3.equals(templatesResponse4));
        System.assert(templatesResponse4.equals(templatesResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASTemplatesResponse templatesResponse1 = OASTemplatesResponse.getExample();
        OASTemplatesResponse templatesResponse2 = new OASTemplatesResponse();

        System.assertEquals(false, templatesResponse1.equals('foo'));
        System.assertEquals(false, templatesResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASTemplatesResponse templatesResponse1 = OASTemplatesResponse.getExample();
        OASTemplatesResponse templatesResponse2 = new OASTemplatesResponse();
        OASTemplatesResponse templatesResponse3;

        System.assertEquals(false, templatesResponse1.equals(templatesResponse3));
        System.assertEquals(false, templatesResponse2.equals(templatesResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASTemplatesResponse templatesResponse1 = OASTemplatesResponse.getExample();
        OASTemplatesResponse templatesResponse2 = new OASTemplatesResponse();

        System.assertEquals(templatesResponse1.hashCode(), templatesResponse1.hashCode());
        System.assertEquals(templatesResponse2.hashCode(), templatesResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASTemplatesResponse templatesResponse1 = OASTemplatesResponse.getExample();
        OASTemplatesResponse templatesResponse2 = OASTemplatesResponse.getExample();
        OASTemplatesResponse templatesResponse3 = new OASTemplatesResponse();
        OASTemplatesResponse templatesResponse4 = new OASTemplatesResponse();

        System.assert(templatesResponse1.equals(templatesResponse2));
        System.assert(templatesResponse3.equals(templatesResponse4));
        System.assertEquals(templatesResponse1.hashCode(), templatesResponse2.hashCode());
        System.assertEquals(templatesResponse3.hashCode(), templatesResponse4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASTemplatesResponse templatesResponse = new OASTemplatesResponse();
        System.assertEquals(new List<OASTemplate>(), templatesResponse.templates);
    }
}