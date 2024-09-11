@isTest
private class OASDeactivateUserFeedbackTest {
    @isTest
    private static void equalsSameInstance() {
        OASDeactivateUserFeedback deactivateUserFeedback1 = OASDeactivateUserFeedback.getExample();
        OASDeactivateUserFeedback deactivateUserFeedback2 = deactivateUserFeedback1;
        OASDeactivateUserFeedback deactivateUserFeedback3 = new OASDeactivateUserFeedback();
        OASDeactivateUserFeedback deactivateUserFeedback4 = deactivateUserFeedback3;

        System.assert(deactivateUserFeedback1.equals(deactivateUserFeedback2));
        System.assert(deactivateUserFeedback2.equals(deactivateUserFeedback1));
        System.assert(deactivateUserFeedback1.equals(deactivateUserFeedback1));
        System.assert(deactivateUserFeedback3.equals(deactivateUserFeedback4));
        System.assert(deactivateUserFeedback4.equals(deactivateUserFeedback3));
        System.assert(deactivateUserFeedback3.equals(deactivateUserFeedback3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDeactivateUserFeedback deactivateUserFeedback1 = OASDeactivateUserFeedback.getExample();
        OASDeactivateUserFeedback deactivateUserFeedback2 = OASDeactivateUserFeedback.getExample();
        OASDeactivateUserFeedback deactivateUserFeedback3 = new OASDeactivateUserFeedback();
        OASDeactivateUserFeedback deactivateUserFeedback4 = new OASDeactivateUserFeedback();

        System.assert(deactivateUserFeedback1.equals(deactivateUserFeedback2));
        System.assert(deactivateUserFeedback2.equals(deactivateUserFeedback1));
        System.assert(deactivateUserFeedback3.equals(deactivateUserFeedback4));
        System.assert(deactivateUserFeedback4.equals(deactivateUserFeedback3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDeactivateUserFeedback deactivateUserFeedback1 = OASDeactivateUserFeedback.getExample();
        OASDeactivateUserFeedback deactivateUserFeedback2 = new OASDeactivateUserFeedback();

        System.assertEquals(false, deactivateUserFeedback1.equals('foo'));
        System.assertEquals(false, deactivateUserFeedback2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDeactivateUserFeedback deactivateUserFeedback1 = OASDeactivateUserFeedback.getExample();
        OASDeactivateUserFeedback deactivateUserFeedback2 = new OASDeactivateUserFeedback();
        OASDeactivateUserFeedback deactivateUserFeedback3;

        System.assertEquals(false, deactivateUserFeedback1.equals(deactivateUserFeedback3));
        System.assertEquals(false, deactivateUserFeedback2.equals(deactivateUserFeedback3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDeactivateUserFeedback deactivateUserFeedback1 = OASDeactivateUserFeedback.getExample();
        OASDeactivateUserFeedback deactivateUserFeedback2 = new OASDeactivateUserFeedback();

        System.assertEquals(deactivateUserFeedback1.hashCode(), deactivateUserFeedback1.hashCode());
        System.assertEquals(deactivateUserFeedback2.hashCode(), deactivateUserFeedback2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDeactivateUserFeedback deactivateUserFeedback1 = OASDeactivateUserFeedback.getExample();
        OASDeactivateUserFeedback deactivateUserFeedback2 = OASDeactivateUserFeedback.getExample();
        OASDeactivateUserFeedback deactivateUserFeedback3 = new OASDeactivateUserFeedback();
        OASDeactivateUserFeedback deactivateUserFeedback4 = new OASDeactivateUserFeedback();

        System.assert(deactivateUserFeedback1.equals(deactivateUserFeedback2));
        System.assert(deactivateUserFeedback3.equals(deactivateUserFeedback4));
        System.assertEquals(deactivateUserFeedback1.hashCode(), deactivateUserFeedback2.hashCode());
        System.assertEquals(deactivateUserFeedback3.hashCode(), deactivateUserFeedback4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASDeactivateUserFeedback deactivateUserFeedback = new OASDeactivateUserFeedback();
        Map<String, String> propertymappings = deactivateUserFeedback.getPropertyMappings();
        System.assertEquals('optionalText', propertymappings.get('optional_text'));
    }
}