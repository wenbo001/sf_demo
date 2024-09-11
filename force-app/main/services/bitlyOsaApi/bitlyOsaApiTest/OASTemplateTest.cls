@isTest
private class OASTemplateTest {
    @isTest
    private static void equalsSameInstance() {
        OASTemplate template1 = OASTemplate.getExample();
        OASTemplate template2 = template1;
        OASTemplate template3 = new OASTemplate();
        OASTemplate template4 = template3;

        System.assert(template1.equals(template2));
        System.assert(template2.equals(template1));
        System.assert(template1.equals(template1));
        System.assert(template3.equals(template4));
        System.assert(template4.equals(template3));
        System.assert(template3.equals(template3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASTemplate template1 = OASTemplate.getExample();
        OASTemplate template2 = OASTemplate.getExample();
        OASTemplate template3 = new OASTemplate();
        OASTemplate template4 = new OASTemplate();

        System.assert(template1.equals(template2));
        System.assert(template2.equals(template1));
        System.assert(template3.equals(template4));
        System.assert(template4.equals(template3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASTemplate template1 = OASTemplate.getExample();
        OASTemplate template2 = new OASTemplate();

        System.assertEquals(false, template1.equals('foo'));
        System.assertEquals(false, template2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASTemplate template1 = OASTemplate.getExample();
        OASTemplate template2 = new OASTemplate();
        OASTemplate template3;

        System.assertEquals(false, template1.equals(template3));
        System.assertEquals(false, template2.equals(template3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASTemplate template1 = OASTemplate.getExample();
        OASTemplate template2 = new OASTemplate();

        System.assertEquals(template1.hashCode(), template1.hashCode());
        System.assertEquals(template2.hashCode(), template2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASTemplate template1 = OASTemplate.getExample();
        OASTemplate template2 = OASTemplate.getExample();
        OASTemplate template3 = new OASTemplate();
        OASTemplate template4 = new OASTemplate();

        System.assert(template1.equals(template2));
        System.assert(template3.equals(template4));
        System.assertEquals(template1.hashCode(), template2.hashCode());
        System.assertEquals(template3.hashCode(), template4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASTemplate template = new OASTemplate();
        Map<String, String> propertymappings = template.getPropertyMappings();
        System.assertEquals('templateGuid', propertymappings.get('template_guid'));
        System.assertEquals('isActive', propertymappings.get('is_active'));
        System.assertEquals('isPaid', propertymappings.get('is_paid'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASTemplate template = new OASTemplate();
        System.assertEquals(new List<OASSiteBlock>(), template.blocks);
        System.assertEquals(null, template.templateGuid);
        System.assertEquals(null, template.content);
        System.assertEquals(null, template.appearance);
        System.assertEquals(null, template.status);
        System.assertEquals(null, template.category);
        System.assertEquals(null, template.created);
        System.assertEquals(null, template.modified);
        System.assertEquals(null, template.isActive);
        System.assertEquals(null, template.isPaid);
    }
}