@isTest
private class OASSiteBlockCommonTest {
    @isTest
    private static void equalsSameInstance() {
        OASSiteBlockCommon siteBlockCommon1 = OASSiteBlockCommon.getExample();
        OASSiteBlockCommon siteBlockCommon2 = siteBlockCommon1;
        OASSiteBlockCommon siteBlockCommon3 = new OASSiteBlockCommon();
        OASSiteBlockCommon siteBlockCommon4 = siteBlockCommon3;

        System.assert(siteBlockCommon1.equals(siteBlockCommon2));
        System.assert(siteBlockCommon2.equals(siteBlockCommon1));
        System.assert(siteBlockCommon1.equals(siteBlockCommon1));
        System.assert(siteBlockCommon3.equals(siteBlockCommon4));
        System.assert(siteBlockCommon4.equals(siteBlockCommon3));
        System.assert(siteBlockCommon3.equals(siteBlockCommon3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSiteBlockCommon siteBlockCommon1 = OASSiteBlockCommon.getExample();
        OASSiteBlockCommon siteBlockCommon2 = OASSiteBlockCommon.getExample();
        OASSiteBlockCommon siteBlockCommon3 = new OASSiteBlockCommon();
        OASSiteBlockCommon siteBlockCommon4 = new OASSiteBlockCommon();

        System.assert(siteBlockCommon1.equals(siteBlockCommon2));
        System.assert(siteBlockCommon2.equals(siteBlockCommon1));
        System.assert(siteBlockCommon3.equals(siteBlockCommon4));
        System.assert(siteBlockCommon4.equals(siteBlockCommon3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSiteBlockCommon siteBlockCommon1 = OASSiteBlockCommon.getExample();
        OASSiteBlockCommon siteBlockCommon2 = new OASSiteBlockCommon();

        System.assertEquals(false, siteBlockCommon1.equals('foo'));
        System.assertEquals(false, siteBlockCommon2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSiteBlockCommon siteBlockCommon1 = OASSiteBlockCommon.getExample();
        OASSiteBlockCommon siteBlockCommon2 = new OASSiteBlockCommon();
        OASSiteBlockCommon siteBlockCommon3;

        System.assertEquals(false, siteBlockCommon1.equals(siteBlockCommon3));
        System.assertEquals(false, siteBlockCommon2.equals(siteBlockCommon3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSiteBlockCommon siteBlockCommon1 = OASSiteBlockCommon.getExample();
        OASSiteBlockCommon siteBlockCommon2 = new OASSiteBlockCommon();

        System.assertEquals(siteBlockCommon1.hashCode(), siteBlockCommon1.hashCode());
        System.assertEquals(siteBlockCommon2.hashCode(), siteBlockCommon2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSiteBlockCommon siteBlockCommon1 = OASSiteBlockCommon.getExample();
        OASSiteBlockCommon siteBlockCommon2 = OASSiteBlockCommon.getExample();
        OASSiteBlockCommon siteBlockCommon3 = new OASSiteBlockCommon();
        OASSiteBlockCommon siteBlockCommon4 = new OASSiteBlockCommon();

        System.assert(siteBlockCommon1.equals(siteBlockCommon2));
        System.assert(siteBlockCommon3.equals(siteBlockCommon4));
        System.assertEquals(siteBlockCommon1.hashCode(), siteBlockCommon2.hashCode());
        System.assertEquals(siteBlockCommon3.hashCode(), siteBlockCommon4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSiteBlockCommon siteBlockCommon = new OASSiteBlockCommon();
        Map<String, String> propertymappings = siteBlockCommon.getPropertyMappings();
        System.assertEquals('siteId', propertymappings.get('site_id'));
        System.assertEquals('blockId', propertymappings.get('block_id'));
        System.assertEquals('sortOrder', propertymappings.get('sort_order'));
        System.assertEquals('scheduleStart', propertymappings.get('schedule_start'));
        System.assertEquals('scheduleEnd', propertymappings.get('schedule_end'));
        System.assertEquals('isActive', propertymappings.get('is_active'));
        System.assertEquals('isPinned', propertymappings.get('is_pinned'));
        System.assertEquals('isSample', propertymappings.get('is_sample'));
    }
}