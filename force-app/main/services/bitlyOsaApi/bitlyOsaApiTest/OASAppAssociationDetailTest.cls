@isTest
private class OASAppAssociationDetailTest {
    @isTest
    private static void equalsSameInstance() {
        OASAppAssociationDetail appAssociationDetail1 = OASAppAssociationDetail.getExample();
        OASAppAssociationDetail appAssociationDetail2 = appAssociationDetail1;
        OASAppAssociationDetail appAssociationDetail3 = new OASAppAssociationDetail();
        OASAppAssociationDetail appAssociationDetail4 = appAssociationDetail3;

        System.assert(appAssociationDetail1.equals(appAssociationDetail2));
        System.assert(appAssociationDetail2.equals(appAssociationDetail1));
        System.assert(appAssociationDetail1.equals(appAssociationDetail1));
        System.assert(appAssociationDetail3.equals(appAssociationDetail4));
        System.assert(appAssociationDetail4.equals(appAssociationDetail3));
        System.assert(appAssociationDetail3.equals(appAssociationDetail3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAppAssociationDetail appAssociationDetail1 = OASAppAssociationDetail.getExample();
        OASAppAssociationDetail appAssociationDetail2 = OASAppAssociationDetail.getExample();
        OASAppAssociationDetail appAssociationDetail3 = new OASAppAssociationDetail();
        OASAppAssociationDetail appAssociationDetail4 = new OASAppAssociationDetail();

        System.assert(appAssociationDetail1.equals(appAssociationDetail2));
        System.assert(appAssociationDetail2.equals(appAssociationDetail1));
        System.assert(appAssociationDetail3.equals(appAssociationDetail4));
        System.assert(appAssociationDetail4.equals(appAssociationDetail3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAppAssociationDetail appAssociationDetail1 = OASAppAssociationDetail.getExample();
        OASAppAssociationDetail appAssociationDetail2 = new OASAppAssociationDetail();

        System.assertEquals(false, appAssociationDetail1.equals('foo'));
        System.assertEquals(false, appAssociationDetail2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAppAssociationDetail appAssociationDetail1 = OASAppAssociationDetail.getExample();
        OASAppAssociationDetail appAssociationDetail2 = new OASAppAssociationDetail();
        OASAppAssociationDetail appAssociationDetail3;

        System.assertEquals(false, appAssociationDetail1.equals(appAssociationDetail3));
        System.assertEquals(false, appAssociationDetail2.equals(appAssociationDetail3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAppAssociationDetail appAssociationDetail1 = OASAppAssociationDetail.getExample();
        OASAppAssociationDetail appAssociationDetail2 = new OASAppAssociationDetail();

        System.assertEquals(appAssociationDetail1.hashCode(), appAssociationDetail1.hashCode());
        System.assertEquals(appAssociationDetail2.hashCode(), appAssociationDetail2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAppAssociationDetail appAssociationDetail1 = OASAppAssociationDetail.getExample();
        OASAppAssociationDetail appAssociationDetail2 = OASAppAssociationDetail.getExample();
        OASAppAssociationDetail appAssociationDetail3 = new OASAppAssociationDetail();
        OASAppAssociationDetail appAssociationDetail4 = new OASAppAssociationDetail();

        System.assert(appAssociationDetail1.equals(appAssociationDetail2));
        System.assert(appAssociationDetail3.equals(appAssociationDetail4));
        System.assertEquals(appAssociationDetail1.hashCode(), appAssociationDetail2.hashCode());
        System.assertEquals(appAssociationDetail3.hashCode(), appAssociationDetail4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASAppAssociationDetail appAssociationDetail = new OASAppAssociationDetail();
        Map<String, String> propertymappings = appAssociationDetail.getPropertyMappings();
        System.assertEquals('appGuid', propertymappings.get('app_guid'));
    }
}