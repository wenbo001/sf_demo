@isTest
private class OASAddOnsTest {
    @isTest
    private static void equalsSameInstance() {
        OASAddOns addOns1 = OASAddOns.getExample();
        OASAddOns addOns2 = addOns1;
        OASAddOns addOns3 = new OASAddOns();
        OASAddOns addOns4 = addOns3;

        System.assert(addOns1.equals(addOns2));
        System.assert(addOns2.equals(addOns1));
        System.assert(addOns1.equals(addOns1));
        System.assert(addOns3.equals(addOns4));
        System.assert(addOns4.equals(addOns3));
        System.assert(addOns3.equals(addOns3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAddOns addOns1 = OASAddOns.getExample();
        OASAddOns addOns2 = OASAddOns.getExample();
        OASAddOns addOns3 = new OASAddOns();
        OASAddOns addOns4 = new OASAddOns();

        System.assert(addOns1.equals(addOns2));
        System.assert(addOns2.equals(addOns1));
        System.assert(addOns3.equals(addOns4));
        System.assert(addOns4.equals(addOns3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAddOns addOns1 = OASAddOns.getExample();
        OASAddOns addOns2 = new OASAddOns();

        System.assertEquals(false, addOns1.equals('foo'));
        System.assertEquals(false, addOns2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAddOns addOns1 = OASAddOns.getExample();
        OASAddOns addOns2 = new OASAddOns();
        OASAddOns addOns3;

        System.assertEquals(false, addOns1.equals(addOns3));
        System.assertEquals(false, addOns2.equals(addOns3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAddOns addOns1 = OASAddOns.getExample();
        OASAddOns addOns2 = new OASAddOns();

        System.assertEquals(addOns1.hashCode(), addOns1.hashCode());
        System.assertEquals(addOns2.hashCode(), addOns2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAddOns addOns1 = OASAddOns.getExample();
        OASAddOns addOns2 = OASAddOns.getExample();
        OASAddOns addOns3 = new OASAddOns();
        OASAddOns addOns4 = new OASAddOns();

        System.assert(addOns1.equals(addOns2));
        System.assert(addOns3.equals(addOns4));
        System.assertEquals(addOns1.hashCode(), addOns2.hashCode());
        System.assertEquals(addOns3.hashCode(), addOns4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASAddOns addOns = new OASAddOns();
        Map<String, String> propertymappings = addOns.getPropertyMappings();
        System.assertEquals('addOns', propertymappings.get('add_ons'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASAddOns addOns = new OASAddOns();
        System.assertEquals(new List<OASAddOn>(), addOns.addOns);
    }
}