@isTest
private class OASFeedbackTest {
    @isTest
    private static void equalsSameInstance() {
        OASFeedback feedback1 = OASFeedback.getExample();
        OASFeedback feedback2 = feedback1;
        OASFeedback feedback3 = new OASFeedback();
        OASFeedback feedback4 = feedback3;

        System.assert(feedback1.equals(feedback2));
        System.assert(feedback2.equals(feedback1));
        System.assert(feedback1.equals(feedback1));
        System.assert(feedback3.equals(feedback4));
        System.assert(feedback4.equals(feedback3));
        System.assert(feedback3.equals(feedback3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASFeedback feedback1 = OASFeedback.getExample();
        OASFeedback feedback2 = OASFeedback.getExample();
        OASFeedback feedback3 = new OASFeedback();
        OASFeedback feedback4 = new OASFeedback();

        System.assert(feedback1.equals(feedback2));
        System.assert(feedback2.equals(feedback1));
        System.assert(feedback3.equals(feedback4));
        System.assert(feedback4.equals(feedback3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASFeedback feedback1 = OASFeedback.getExample();
        OASFeedback feedback2 = new OASFeedback();

        System.assertEquals(false, feedback1.equals('foo'));
        System.assertEquals(false, feedback2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASFeedback feedback1 = OASFeedback.getExample();
        OASFeedback feedback2 = new OASFeedback();
        OASFeedback feedback3;

        System.assertEquals(false, feedback1.equals(feedback3));
        System.assertEquals(false, feedback2.equals(feedback3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASFeedback feedback1 = OASFeedback.getExample();
        OASFeedback feedback2 = new OASFeedback();

        System.assertEquals(feedback1.hashCode(), feedback1.hashCode());
        System.assertEquals(feedback2.hashCode(), feedback2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASFeedback feedback1 = OASFeedback.getExample();
        OASFeedback feedback2 = OASFeedback.getExample();
        OASFeedback feedback3 = new OASFeedback();
        OASFeedback feedback4 = new OASFeedback();

        System.assert(feedback1.equals(feedback2));
        System.assert(feedback3.equals(feedback4));
        System.assertEquals(feedback1.hashCode(), feedback2.hashCode());
        System.assertEquals(feedback3.hashCode(), feedback4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASFeedback feedback = new OASFeedback();
        Map<String, String> propertymappings = feedback.getPropertyMappings();
        System.assertEquals('optionalText', propertymappings.get('optional_text'));
    }
}