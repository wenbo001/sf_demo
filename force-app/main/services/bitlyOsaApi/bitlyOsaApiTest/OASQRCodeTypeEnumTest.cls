@isTest
private class OASQRCodeTypeEnumTest {
    @isTest
    private static void allowableValues() {
        Set<OASQRCodeTypeEnum> expected = new Set<OASQRCodeTypeEnum>{
            OASQRCodeTypeEnum.BITLINK,
            OASQRCodeTypeEnum.LONG_URL,
            OASQRCodeTypeEnum.LINK_IN_BIO,
            OASQRCodeTypeEnum.V_CARD,
            OASQRCodeTypeEnum.WIFI,
            OASQRCodeTypeEnum.EMAIL,
            OASQRCodeTypeEnum.PHONE,
            OASQRCodeTypeEnum.TEXT
        };
        Set<OASQRCodeTypeEnum> actual  = new Set<OASQRCodeTypeEnum>(OASQRCodeTypeEnum.values());
        System.assertEquals(expected, actual);
    }
}