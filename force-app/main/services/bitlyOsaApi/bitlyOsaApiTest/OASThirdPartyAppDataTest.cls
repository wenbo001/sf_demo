@isTest
private class OASThirdPartyAppDataTest {
    @isTest
    private static void equalsSameInstance() {
        OASThirdPartyAppData thirdPartyAppData1 = OASThirdPartyAppData.getExample();
        OASThirdPartyAppData thirdPartyAppData2 = thirdPartyAppData1;
        OASThirdPartyAppData thirdPartyAppData3 = new OASThirdPartyAppData();
        OASThirdPartyAppData thirdPartyAppData4 = thirdPartyAppData3;

        System.assert(thirdPartyAppData1.equals(thirdPartyAppData2));
        System.assert(thirdPartyAppData2.equals(thirdPartyAppData1));
        System.assert(thirdPartyAppData1.equals(thirdPartyAppData1));
        System.assert(thirdPartyAppData3.equals(thirdPartyAppData4));
        System.assert(thirdPartyAppData4.equals(thirdPartyAppData3));
        System.assert(thirdPartyAppData3.equals(thirdPartyAppData3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASThirdPartyAppData thirdPartyAppData1 = OASThirdPartyAppData.getExample();
        OASThirdPartyAppData thirdPartyAppData2 = OASThirdPartyAppData.getExample();
        OASThirdPartyAppData thirdPartyAppData3 = new OASThirdPartyAppData();
        OASThirdPartyAppData thirdPartyAppData4 = new OASThirdPartyAppData();

        System.assert(thirdPartyAppData1.equals(thirdPartyAppData2));
        System.assert(thirdPartyAppData2.equals(thirdPartyAppData1));
        System.assert(thirdPartyAppData3.equals(thirdPartyAppData4));
        System.assert(thirdPartyAppData4.equals(thirdPartyAppData3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASThirdPartyAppData thirdPartyAppData1 = OASThirdPartyAppData.getExample();
        OASThirdPartyAppData thirdPartyAppData2 = new OASThirdPartyAppData();

        System.assertEquals(false, thirdPartyAppData1.equals('foo'));
        System.assertEquals(false, thirdPartyAppData2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASThirdPartyAppData thirdPartyAppData1 = OASThirdPartyAppData.getExample();
        OASThirdPartyAppData thirdPartyAppData2 = new OASThirdPartyAppData();
        OASThirdPartyAppData thirdPartyAppData3;

        System.assertEquals(false, thirdPartyAppData1.equals(thirdPartyAppData3));
        System.assertEquals(false, thirdPartyAppData2.equals(thirdPartyAppData3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASThirdPartyAppData thirdPartyAppData1 = OASThirdPartyAppData.getExample();
        OASThirdPartyAppData thirdPartyAppData2 = new OASThirdPartyAppData();

        System.assertEquals(thirdPartyAppData1.hashCode(), thirdPartyAppData1.hashCode());
        System.assertEquals(thirdPartyAppData2.hashCode(), thirdPartyAppData2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASThirdPartyAppData thirdPartyAppData1 = OASThirdPartyAppData.getExample();
        OASThirdPartyAppData thirdPartyAppData2 = OASThirdPartyAppData.getExample();
        OASThirdPartyAppData thirdPartyAppData3 = new OASThirdPartyAppData();
        OASThirdPartyAppData thirdPartyAppData4 = new OASThirdPartyAppData();

        System.assert(thirdPartyAppData1.equals(thirdPartyAppData2));
        System.assert(thirdPartyAppData3.equals(thirdPartyAppData4));
        System.assertEquals(thirdPartyAppData1.hashCode(), thirdPartyAppData2.hashCode());
        System.assertEquals(thirdPartyAppData3.hashCode(), thirdPartyAppData4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASThirdPartyAppData thirdPartyAppData = new OASThirdPartyAppData();
        Map<String, String> propertymappings = thirdPartyAppData.getPropertyMappings();
        System.assertEquals('thirdPartyAppId', propertymappings.get('third_party_app_id'));
        System.assertEquals('installUrl', propertymappings.get('install_url'));
        System.assertEquals('iconUrl', propertymappings.get('icon_url'));
    }
}