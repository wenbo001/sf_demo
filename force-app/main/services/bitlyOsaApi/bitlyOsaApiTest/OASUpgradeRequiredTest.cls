@isTest
private class OASUpgradeRequiredTest {
    @isTest
    private static void equalsSameInstance() {
        OASUpgradeRequired upgradeRequired1 = OASUpgradeRequired.getExample();
        OASUpgradeRequired upgradeRequired2 = upgradeRequired1;
        OASUpgradeRequired upgradeRequired3 = new OASUpgradeRequired();
        OASUpgradeRequired upgradeRequired4 = upgradeRequired3;

        System.assert(upgradeRequired1.equals(upgradeRequired2));
        System.assert(upgradeRequired2.equals(upgradeRequired1));
        System.assert(upgradeRequired1.equals(upgradeRequired1));
        System.assert(upgradeRequired3.equals(upgradeRequired4));
        System.assert(upgradeRequired4.equals(upgradeRequired3));
        System.assert(upgradeRequired3.equals(upgradeRequired3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUpgradeRequired upgradeRequired1 = OASUpgradeRequired.getExample();
        OASUpgradeRequired upgradeRequired2 = OASUpgradeRequired.getExample();
        OASUpgradeRequired upgradeRequired3 = new OASUpgradeRequired();
        OASUpgradeRequired upgradeRequired4 = new OASUpgradeRequired();

        System.assert(upgradeRequired1.equals(upgradeRequired2));
        System.assert(upgradeRequired2.equals(upgradeRequired1));
        System.assert(upgradeRequired3.equals(upgradeRequired4));
        System.assert(upgradeRequired4.equals(upgradeRequired3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUpgradeRequired upgradeRequired1 = OASUpgradeRequired.getExample();
        OASUpgradeRequired upgradeRequired2 = new OASUpgradeRequired();

        System.assertEquals(false, upgradeRequired1.equals('foo'));
        System.assertEquals(false, upgradeRequired2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUpgradeRequired upgradeRequired1 = OASUpgradeRequired.getExample();
        OASUpgradeRequired upgradeRequired2 = new OASUpgradeRequired();
        OASUpgradeRequired upgradeRequired3;

        System.assertEquals(false, upgradeRequired1.equals(upgradeRequired3));
        System.assertEquals(false, upgradeRequired2.equals(upgradeRequired3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUpgradeRequired upgradeRequired1 = OASUpgradeRequired.getExample();
        OASUpgradeRequired upgradeRequired2 = new OASUpgradeRequired();

        System.assertEquals(upgradeRequired1.hashCode(), upgradeRequired1.hashCode());
        System.assertEquals(upgradeRequired2.hashCode(), upgradeRequired2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUpgradeRequired upgradeRequired1 = OASUpgradeRequired.getExample();
        OASUpgradeRequired upgradeRequired2 = OASUpgradeRequired.getExample();
        OASUpgradeRequired upgradeRequired3 = new OASUpgradeRequired();
        OASUpgradeRequired upgradeRequired4 = new OASUpgradeRequired();

        System.assert(upgradeRequired1.equals(upgradeRequired2));
        System.assert(upgradeRequired3.equals(upgradeRequired4));
        System.assertEquals(upgradeRequired1.hashCode(), upgradeRequired2.hashCode());
        System.assertEquals(upgradeRequired3.hashCode(), upgradeRequired4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASUpgradeRequired upgradeRequired = new OASUpgradeRequired();
        System.assertEquals(new List<OASFieldError>(), upgradeRequired.errors);
        System.assertEquals(null, upgradeRequired.message);
        System.assertEquals(null, upgradeRequired.description);
        System.assertEquals(null, upgradeRequired.resource);
    }
}