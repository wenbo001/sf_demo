@isTest
private class OASSiteBlockTest {
    @isTest
    private static void equalsSameInstance() {
        OASSiteBlock siteBlock1 = OASSiteBlock.getExample();
        OASSiteBlock siteBlock2 = siteBlock1;
        OASSiteBlock siteBlock3 = new OASSiteBlock();
        OASSiteBlock siteBlock4 = siteBlock3;

        System.assert(siteBlock1.equals(siteBlock2));
        System.assert(siteBlock2.equals(siteBlock1));
        System.assert(siteBlock1.equals(siteBlock1));
        System.assert(siteBlock3.equals(siteBlock4));
        System.assert(siteBlock4.equals(siteBlock3));
        System.assert(siteBlock3.equals(siteBlock3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSiteBlock siteBlock1 = OASSiteBlock.getExample();
        OASSiteBlock siteBlock2 = OASSiteBlock.getExample();
        OASSiteBlock siteBlock3 = new OASSiteBlock();
        OASSiteBlock siteBlock4 = new OASSiteBlock();

        System.assert(siteBlock1.equals(siteBlock2));
        System.assert(siteBlock2.equals(siteBlock1));
        System.assert(siteBlock3.equals(siteBlock4));
        System.assert(siteBlock4.equals(siteBlock3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSiteBlock siteBlock1 = OASSiteBlock.getExample();
        OASSiteBlock siteBlock2 = new OASSiteBlock();

        System.assertEquals(false, siteBlock1.equals('foo'));
        System.assertEquals(false, siteBlock2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSiteBlock siteBlock1 = OASSiteBlock.getExample();
        OASSiteBlock siteBlock2 = new OASSiteBlock();
        OASSiteBlock siteBlock3;

        System.assertEquals(false, siteBlock1.equals(siteBlock3));
        System.assertEquals(false, siteBlock2.equals(siteBlock3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSiteBlock siteBlock1 = OASSiteBlock.getExample();
        OASSiteBlock siteBlock2 = new OASSiteBlock();

        System.assertEquals(siteBlock1.hashCode(), siteBlock1.hashCode());
        System.assertEquals(siteBlock2.hashCode(), siteBlock2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSiteBlock siteBlock1 = OASSiteBlock.getExample();
        OASSiteBlock siteBlock2 = OASSiteBlock.getExample();
        OASSiteBlock siteBlock3 = new OASSiteBlock();
        OASSiteBlock siteBlock4 = new OASSiteBlock();

        System.assert(siteBlock1.equals(siteBlock2));
        System.assert(siteBlock3.equals(siteBlock4));
        System.assertEquals(siteBlock1.hashCode(), siteBlock2.hashCode());
        System.assertEquals(siteBlock3.hashCode(), siteBlock4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSiteBlock siteBlock = new OASSiteBlock();
        Map<String, String> propertymappings = siteBlock.getPropertyMappings();
        System.assertEquals('containerId', propertymappings.get('container_id'));
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