@isTest
private class OASDowngradeOrgBodyTest {
    @isTest
    private static void equalsSameInstance() {
        OASDowngradeOrgBody downgradeOrgBody1 = OASDowngradeOrgBody.getExample();
        OASDowngradeOrgBody downgradeOrgBody2 = downgradeOrgBody1;
        OASDowngradeOrgBody downgradeOrgBody3 = new OASDowngradeOrgBody();
        OASDowngradeOrgBody downgradeOrgBody4 = downgradeOrgBody3;

        System.assert(downgradeOrgBody1.equals(downgradeOrgBody2));
        System.assert(downgradeOrgBody2.equals(downgradeOrgBody1));
        System.assert(downgradeOrgBody1.equals(downgradeOrgBody1));
        System.assert(downgradeOrgBody3.equals(downgradeOrgBody4));
        System.assert(downgradeOrgBody4.equals(downgradeOrgBody3));
        System.assert(downgradeOrgBody3.equals(downgradeOrgBody3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDowngradeOrgBody downgradeOrgBody1 = OASDowngradeOrgBody.getExample();
        OASDowngradeOrgBody downgradeOrgBody2 = OASDowngradeOrgBody.getExample();
        OASDowngradeOrgBody downgradeOrgBody3 = new OASDowngradeOrgBody();
        OASDowngradeOrgBody downgradeOrgBody4 = new OASDowngradeOrgBody();

        System.assert(downgradeOrgBody1.equals(downgradeOrgBody2));
        System.assert(downgradeOrgBody2.equals(downgradeOrgBody1));
        System.assert(downgradeOrgBody3.equals(downgradeOrgBody4));
        System.assert(downgradeOrgBody4.equals(downgradeOrgBody3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDowngradeOrgBody downgradeOrgBody1 = OASDowngradeOrgBody.getExample();
        OASDowngradeOrgBody downgradeOrgBody2 = new OASDowngradeOrgBody();

        System.assertEquals(false, downgradeOrgBody1.equals('foo'));
        System.assertEquals(false, downgradeOrgBody2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDowngradeOrgBody downgradeOrgBody1 = OASDowngradeOrgBody.getExample();
        OASDowngradeOrgBody downgradeOrgBody2 = new OASDowngradeOrgBody();
        OASDowngradeOrgBody downgradeOrgBody3;

        System.assertEquals(false, downgradeOrgBody1.equals(downgradeOrgBody3));
        System.assertEquals(false, downgradeOrgBody2.equals(downgradeOrgBody3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDowngradeOrgBody downgradeOrgBody1 = OASDowngradeOrgBody.getExample();
        OASDowngradeOrgBody downgradeOrgBody2 = new OASDowngradeOrgBody();

        System.assertEquals(downgradeOrgBody1.hashCode(), downgradeOrgBody1.hashCode());
        System.assertEquals(downgradeOrgBody2.hashCode(), downgradeOrgBody2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDowngradeOrgBody downgradeOrgBody1 = OASDowngradeOrgBody.getExample();
        OASDowngradeOrgBody downgradeOrgBody2 = OASDowngradeOrgBody.getExample();
        OASDowngradeOrgBody downgradeOrgBody3 = new OASDowngradeOrgBody();
        OASDowngradeOrgBody downgradeOrgBody4 = new OASDowngradeOrgBody();

        System.assert(downgradeOrgBody1.equals(downgradeOrgBody2));
        System.assert(downgradeOrgBody3.equals(downgradeOrgBody4));
        System.assertEquals(downgradeOrgBody1.hashCode(), downgradeOrgBody2.hashCode());
        System.assertEquals(downgradeOrgBody3.hashCode(), downgradeOrgBody4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASDowngradeOrgBody downgradeOrgBody = new OASDowngradeOrgBody();
        Map<String, String> propertymappings = downgradeOrgBody.getPropertyMappings();
        System.assertEquals('orgGuid', propertymappings.get('org_guid'));
        System.assertEquals('accountNum', propertymappings.get('account_num'));
        System.assertEquals('termEndDate', propertymappings.get('term_end_date'));
    }
}