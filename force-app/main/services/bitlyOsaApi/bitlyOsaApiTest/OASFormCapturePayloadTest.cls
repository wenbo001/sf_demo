@isTest
private class OASFormCapturePayloadTest {
    @isTest
    private static void equalsSameInstance() {
        OASFormCapturePayload formCapturePayload1 = OASFormCapturePayload.getExample();
        OASFormCapturePayload formCapturePayload2 = formCapturePayload1;
        OASFormCapturePayload formCapturePayload3 = new OASFormCapturePayload();
        OASFormCapturePayload formCapturePayload4 = formCapturePayload3;

        System.assert(formCapturePayload1.equals(formCapturePayload2));
        System.assert(formCapturePayload2.equals(formCapturePayload1));
        System.assert(formCapturePayload1.equals(formCapturePayload1));
        System.assert(formCapturePayload3.equals(formCapturePayload4));
        System.assert(formCapturePayload4.equals(formCapturePayload3));
        System.assert(formCapturePayload3.equals(formCapturePayload3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASFormCapturePayload formCapturePayload1 = OASFormCapturePayload.getExample();
        OASFormCapturePayload formCapturePayload2 = OASFormCapturePayload.getExample();
        OASFormCapturePayload formCapturePayload3 = new OASFormCapturePayload();
        OASFormCapturePayload formCapturePayload4 = new OASFormCapturePayload();

        System.assert(formCapturePayload1.equals(formCapturePayload2));
        System.assert(formCapturePayload2.equals(formCapturePayload1));
        System.assert(formCapturePayload3.equals(formCapturePayload4));
        System.assert(formCapturePayload4.equals(formCapturePayload3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASFormCapturePayload formCapturePayload1 = OASFormCapturePayload.getExample();
        OASFormCapturePayload formCapturePayload2 = new OASFormCapturePayload();

        System.assertEquals(false, formCapturePayload1.equals('foo'));
        System.assertEquals(false, formCapturePayload2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASFormCapturePayload formCapturePayload1 = OASFormCapturePayload.getExample();
        OASFormCapturePayload formCapturePayload2 = new OASFormCapturePayload();
        OASFormCapturePayload formCapturePayload3;

        System.assertEquals(false, formCapturePayload1.equals(formCapturePayload3));
        System.assertEquals(false, formCapturePayload2.equals(formCapturePayload3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASFormCapturePayload formCapturePayload1 = OASFormCapturePayload.getExample();
        OASFormCapturePayload formCapturePayload2 = new OASFormCapturePayload();

        System.assertEquals(formCapturePayload1.hashCode(), formCapturePayload1.hashCode());
        System.assertEquals(formCapturePayload2.hashCode(), formCapturePayload2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASFormCapturePayload formCapturePayload1 = OASFormCapturePayload.getExample();
        OASFormCapturePayload formCapturePayload2 = OASFormCapturePayload.getExample();
        OASFormCapturePayload formCapturePayload3 = new OASFormCapturePayload();
        OASFormCapturePayload formCapturePayload4 = new OASFormCapturePayload();

        System.assert(formCapturePayload1.equals(formCapturePayload2));
        System.assert(formCapturePayload3.equals(formCapturePayload4));
        System.assertEquals(formCapturePayload1.hashCode(), formCapturePayload2.hashCode());
        System.assertEquals(formCapturePayload3.hashCode(), formCapturePayload4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASFormCapturePayload formCapturePayload = new OASFormCapturePayload();
        Map<String, String> propertymappings = formCapturePayload.getPropertyMappings();
        System.assertEquals('submitText', propertymappings.get('submit_text'));
        System.assertEquals('skipText', propertymappings.get('skip_text'));
        System.assertEquals('orgGuid', propertymappings.get('org_guid'));
        System.assertEquals('groupGuid', propertymappings.get('group_guid'));
        System.assertEquals('responseStatus', propertymappings.get('response_status'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASFormCapturePayload formCapturePayload = new OASFormCapturePayload();
        System.assertEquals(new List<OASFormPage>(), formCapturePayload.pages);
        System.assertEquals(null, formCapturePayload.name);
        System.assertEquals(null, formCapturePayload.version);
        System.assertEquals(null, formCapturePayload.submitText);
        System.assertEquals(null, formCapturePayload.skipText);
        System.assertEquals(null, formCapturePayload.login);
        System.assertEquals(null, formCapturePayload.orgGuid);
        System.assertEquals(null, formCapturePayload.groupGuid);
        System.assertEquals(null, formCapturePayload.responseStatus);
    }
}