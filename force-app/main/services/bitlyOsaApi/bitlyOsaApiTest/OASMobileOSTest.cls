@isTest
private class OASMobileOSTest {
    @isTest
    private static void allowableValues() {
        Set<OASMobileOS> expected = new Set<OASMobileOS>{
            OASMobileOS.IOS,
            OASMobileOS.ANDROID
        };
        Set<OASMobileOS> actual  = new Set<OASMobileOS>(OASMobileOS.values());
        System.assertEquals(expected, actual);
    }
}