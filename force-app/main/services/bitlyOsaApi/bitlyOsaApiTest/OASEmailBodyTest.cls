@isTest
private class OASEmailBodyTest {
    @isTest
    private static void equalsSameInstance() {
        OASEmailBody emailBody1 = OASEmailBody.getExample();
        OASEmailBody emailBody2 = emailBody1;
        OASEmailBody emailBody3 = new OASEmailBody();
        OASEmailBody emailBody4 = emailBody3;

        System.assert(emailBody1.equals(emailBody2));
        System.assert(emailBody2.equals(emailBody1));
        System.assert(emailBody1.equals(emailBody1));
        System.assert(emailBody3.equals(emailBody4));
        System.assert(emailBody4.equals(emailBody3));
        System.assert(emailBody3.equals(emailBody3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASEmailBody emailBody1 = OASEmailBody.getExample();
        OASEmailBody emailBody2 = OASEmailBody.getExample();
        OASEmailBody emailBody3 = new OASEmailBody();
        OASEmailBody emailBody4 = new OASEmailBody();

        System.assert(emailBody1.equals(emailBody2));
        System.assert(emailBody2.equals(emailBody1));
        System.assert(emailBody3.equals(emailBody4));
        System.assert(emailBody4.equals(emailBody3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASEmailBody emailBody1 = OASEmailBody.getExample();
        OASEmailBody emailBody2 = new OASEmailBody();

        System.assertEquals(false, emailBody1.equals('foo'));
        System.assertEquals(false, emailBody2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASEmailBody emailBody1 = OASEmailBody.getExample();
        OASEmailBody emailBody2 = new OASEmailBody();
        OASEmailBody emailBody3;

        System.assertEquals(false, emailBody1.equals(emailBody3));
        System.assertEquals(false, emailBody2.equals(emailBody3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASEmailBody emailBody1 = OASEmailBody.getExample();
        OASEmailBody emailBody2 = new OASEmailBody();

        System.assertEquals(emailBody1.hashCode(), emailBody1.hashCode());
        System.assertEquals(emailBody2.hashCode(), emailBody2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASEmailBody emailBody1 = OASEmailBody.getExample();
        OASEmailBody emailBody2 = OASEmailBody.getExample();
        OASEmailBody emailBody3 = new OASEmailBody();
        OASEmailBody emailBody4 = new OASEmailBody();

        System.assert(emailBody1.equals(emailBody2));
        System.assert(emailBody3.equals(emailBody4));
        System.assertEquals(emailBody1.hashCode(), emailBody2.hashCode());
        System.assertEquals(emailBody3.hashCode(), emailBody4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASEmailBody emailBody = new OASEmailBody();
        Map<String, String> propertymappings = emailBody.getPropertyMappings();
        System.assertEquals('isPrimary', propertymappings.get('is_primary'));
    }
}