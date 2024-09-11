@isTest
private class OASPurchaseBSDTest {
    @isTest
    private static void equalsSameInstance() {
        OASPurchaseBSD purchaseBSD1 = OASPurchaseBSD.getExample();
        OASPurchaseBSD purchaseBSD2 = purchaseBSD1;
        OASPurchaseBSD purchaseBSD3 = new OASPurchaseBSD();
        OASPurchaseBSD purchaseBSD4 = purchaseBSD3;

        System.assert(purchaseBSD1.equals(purchaseBSD2));
        System.assert(purchaseBSD2.equals(purchaseBSD1));
        System.assert(purchaseBSD1.equals(purchaseBSD1));
        System.assert(purchaseBSD3.equals(purchaseBSD4));
        System.assert(purchaseBSD4.equals(purchaseBSD3));
        System.assert(purchaseBSD3.equals(purchaseBSD3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPurchaseBSD purchaseBSD1 = OASPurchaseBSD.getExample();
        OASPurchaseBSD purchaseBSD2 = OASPurchaseBSD.getExample();
        OASPurchaseBSD purchaseBSD3 = new OASPurchaseBSD();
        OASPurchaseBSD purchaseBSD4 = new OASPurchaseBSD();

        System.assert(purchaseBSD1.equals(purchaseBSD2));
        System.assert(purchaseBSD2.equals(purchaseBSD1));
        System.assert(purchaseBSD3.equals(purchaseBSD4));
        System.assert(purchaseBSD4.equals(purchaseBSD3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPurchaseBSD purchaseBSD1 = OASPurchaseBSD.getExample();
        OASPurchaseBSD purchaseBSD2 = new OASPurchaseBSD();

        System.assertEquals(false, purchaseBSD1.equals('foo'));
        System.assertEquals(false, purchaseBSD2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPurchaseBSD purchaseBSD1 = OASPurchaseBSD.getExample();
        OASPurchaseBSD purchaseBSD2 = new OASPurchaseBSD();
        OASPurchaseBSD purchaseBSD3;

        System.assertEquals(false, purchaseBSD1.equals(purchaseBSD3));
        System.assertEquals(false, purchaseBSD2.equals(purchaseBSD3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPurchaseBSD purchaseBSD1 = OASPurchaseBSD.getExample();
        OASPurchaseBSD purchaseBSD2 = new OASPurchaseBSD();

        System.assertEquals(purchaseBSD1.hashCode(), purchaseBSD1.hashCode());
        System.assertEquals(purchaseBSD2.hashCode(), purchaseBSD2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPurchaseBSD purchaseBSD1 = OASPurchaseBSD.getExample();
        OASPurchaseBSD purchaseBSD2 = OASPurchaseBSD.getExample();
        OASPurchaseBSD purchaseBSD3 = new OASPurchaseBSD();
        OASPurchaseBSD purchaseBSD4 = new OASPurchaseBSD();

        System.assert(purchaseBSD1.equals(purchaseBSD2));
        System.assert(purchaseBSD3.equals(purchaseBSD4));
        System.assertEquals(purchaseBSD1.hashCode(), purchaseBSD2.hashCode());
        System.assertEquals(purchaseBSD3.hashCode(), purchaseBSD4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPurchaseBSD purchaseBSD = new OASPurchaseBSD();
        Map<String, String> propertymappings = purchaseBSD.getPropertyMappings();
        System.assertEquals('agreedAt', propertymappings.get('agreed_at'));
        System.assertEquals('agreementKeys', propertymappings.get('agreement_keys'));
        System.assertEquals('organizationGuid', propertymappings.get('organization_guid'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASPurchaseBSD purchaseBSD = new OASPurchaseBSD();
        System.assertEquals(new List<String>(), purchaseBSD.agreementKeys);
        System.assertEquals(null, purchaseBSD.agreedAt);
        System.assertEquals(null, purchaseBSD.domain);
        System.assertEquals(null, purchaseBSD.organizationGuid);
    }
}