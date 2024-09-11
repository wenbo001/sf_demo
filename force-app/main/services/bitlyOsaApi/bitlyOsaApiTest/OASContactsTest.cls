@isTest
private class OASContactsTest {
    @isTest
    private static void equalsSameInstance() {
        OASContacts contacts1 = OASContacts.getExample();
        OASContacts contacts2 = contacts1;
        OASContacts contacts3 = new OASContacts();
        OASContacts contacts4 = contacts3;

        System.assert(contacts1.equals(contacts2));
        System.assert(contacts2.equals(contacts1));
        System.assert(contacts1.equals(contacts1));
        System.assert(contacts3.equals(contacts4));
        System.assert(contacts4.equals(contacts3));
        System.assert(contacts3.equals(contacts3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASContacts contacts1 = OASContacts.getExample();
        OASContacts contacts2 = OASContacts.getExample();
        OASContacts contacts3 = new OASContacts();
        OASContacts contacts4 = new OASContacts();

        System.assert(contacts1.equals(contacts2));
        System.assert(contacts2.equals(contacts1));
        System.assert(contacts3.equals(contacts4));
        System.assert(contacts4.equals(contacts3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASContacts contacts1 = OASContacts.getExample();
        OASContacts contacts2 = new OASContacts();

        System.assertEquals(false, contacts1.equals('foo'));
        System.assertEquals(false, contacts2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASContacts contacts1 = OASContacts.getExample();
        OASContacts contacts2 = new OASContacts();
        OASContacts contacts3;

        System.assertEquals(false, contacts1.equals(contacts3));
        System.assertEquals(false, contacts2.equals(contacts3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASContacts contacts1 = OASContacts.getExample();
        OASContacts contacts2 = new OASContacts();

        System.assertEquals(contacts1.hashCode(), contacts1.hashCode());
        System.assertEquals(contacts2.hashCode(), contacts2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASContacts contacts1 = OASContacts.getExample();
        OASContacts contacts2 = OASContacts.getExample();
        OASContacts contacts3 = new OASContacts();
        OASContacts contacts4 = new OASContacts();

        System.assert(contacts1.equals(contacts2));
        System.assert(contacts3.equals(contacts4));
        System.assertEquals(contacts1.hashCode(), contacts2.hashCode());
        System.assertEquals(contacts3.hashCode(), contacts4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASContacts contacts = new OASContacts();
        Map<String, String> propertymappings = contacts.getPropertyMappings();
        System.assertEquals('soldTo', propertymappings.get('sold_to'));
        System.assertEquals('billTo', propertymappings.get('bill_to'));
    }
}