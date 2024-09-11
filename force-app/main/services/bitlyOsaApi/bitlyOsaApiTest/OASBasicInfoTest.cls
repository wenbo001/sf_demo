@isTest
private class OASBasicInfoTest {
    @isTest
    private static void equalsSameInstance() {
        OASBasicInfo basicInfo1 = OASBasicInfo.getExample();
        OASBasicInfo basicInfo2 = basicInfo1;
        OASBasicInfo basicInfo3 = new OASBasicInfo();
        OASBasicInfo basicInfo4 = basicInfo3;

        System.assert(basicInfo1.equals(basicInfo2));
        System.assert(basicInfo2.equals(basicInfo1));
        System.assert(basicInfo1.equals(basicInfo1));
        System.assert(basicInfo3.equals(basicInfo4));
        System.assert(basicInfo4.equals(basicInfo3));
        System.assert(basicInfo3.equals(basicInfo3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBasicInfo basicInfo1 = OASBasicInfo.getExample();
        OASBasicInfo basicInfo2 = OASBasicInfo.getExample();
        OASBasicInfo basicInfo3 = new OASBasicInfo();
        OASBasicInfo basicInfo4 = new OASBasicInfo();

        System.assert(basicInfo1.equals(basicInfo2));
        System.assert(basicInfo2.equals(basicInfo1));
        System.assert(basicInfo3.equals(basicInfo4));
        System.assert(basicInfo4.equals(basicInfo3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBasicInfo basicInfo1 = OASBasicInfo.getExample();
        OASBasicInfo basicInfo2 = new OASBasicInfo();

        System.assertEquals(false, basicInfo1.equals('foo'));
        System.assertEquals(false, basicInfo2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBasicInfo basicInfo1 = OASBasicInfo.getExample();
        OASBasicInfo basicInfo2 = new OASBasicInfo();
        OASBasicInfo basicInfo3;

        System.assertEquals(false, basicInfo1.equals(basicInfo3));
        System.assertEquals(false, basicInfo2.equals(basicInfo3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBasicInfo basicInfo1 = OASBasicInfo.getExample();
        OASBasicInfo basicInfo2 = new OASBasicInfo();

        System.assertEquals(basicInfo1.hashCode(), basicInfo1.hashCode());
        System.assertEquals(basicInfo2.hashCode(), basicInfo2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBasicInfo basicInfo1 = OASBasicInfo.getExample();
        OASBasicInfo basicInfo2 = OASBasicInfo.getExample();
        OASBasicInfo basicInfo3 = new OASBasicInfo();
        OASBasicInfo basicInfo4 = new OASBasicInfo();

        System.assert(basicInfo1.equals(basicInfo2));
        System.assert(basicInfo3.equals(basicInfo4));
        System.assertEquals(basicInfo1.hashCode(), basicInfo2.hashCode());
        System.assertEquals(basicInfo3.hashCode(), basicInfo4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBasicInfo basicInfo = new OASBasicInfo();
        Map<String, String> propertymappings = basicInfo.getPropertyMappings();
        System.assertEquals('companyName', propertymappings.get('company_name'));
        System.assertEquals('vatId', propertymappings.get('vat_id'));
    }
}