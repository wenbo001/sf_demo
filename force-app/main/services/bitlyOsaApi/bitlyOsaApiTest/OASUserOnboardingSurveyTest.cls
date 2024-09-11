@isTest
private class OASUserOnboardingSurveyTest {
    @isTest
    private static void equalsSameInstance() {
        OASUserOnboardingSurvey userOnboardingSurvey1 = OASUserOnboardingSurvey.getExample();
        OASUserOnboardingSurvey userOnboardingSurvey2 = userOnboardingSurvey1;
        OASUserOnboardingSurvey userOnboardingSurvey3 = new OASUserOnboardingSurvey();
        OASUserOnboardingSurvey userOnboardingSurvey4 = userOnboardingSurvey3;

        System.assert(userOnboardingSurvey1.equals(userOnboardingSurvey2));
        System.assert(userOnboardingSurvey2.equals(userOnboardingSurvey1));
        System.assert(userOnboardingSurvey1.equals(userOnboardingSurvey1));
        System.assert(userOnboardingSurvey3.equals(userOnboardingSurvey4));
        System.assert(userOnboardingSurvey4.equals(userOnboardingSurvey3));
        System.assert(userOnboardingSurvey3.equals(userOnboardingSurvey3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUserOnboardingSurvey userOnboardingSurvey1 = OASUserOnboardingSurvey.getExample();
        OASUserOnboardingSurvey userOnboardingSurvey2 = OASUserOnboardingSurvey.getExample();
        OASUserOnboardingSurvey userOnboardingSurvey3 = new OASUserOnboardingSurvey();
        OASUserOnboardingSurvey userOnboardingSurvey4 = new OASUserOnboardingSurvey();

        System.assert(userOnboardingSurvey1.equals(userOnboardingSurvey2));
        System.assert(userOnboardingSurvey2.equals(userOnboardingSurvey1));
        System.assert(userOnboardingSurvey3.equals(userOnboardingSurvey4));
        System.assert(userOnboardingSurvey4.equals(userOnboardingSurvey3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUserOnboardingSurvey userOnboardingSurvey1 = OASUserOnboardingSurvey.getExample();
        OASUserOnboardingSurvey userOnboardingSurvey2 = new OASUserOnboardingSurvey();

        System.assertEquals(false, userOnboardingSurvey1.equals('foo'));
        System.assertEquals(false, userOnboardingSurvey2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUserOnboardingSurvey userOnboardingSurvey1 = OASUserOnboardingSurvey.getExample();
        OASUserOnboardingSurvey userOnboardingSurvey2 = new OASUserOnboardingSurvey();
        OASUserOnboardingSurvey userOnboardingSurvey3;

        System.assertEquals(false, userOnboardingSurvey1.equals(userOnboardingSurvey3));
        System.assertEquals(false, userOnboardingSurvey2.equals(userOnboardingSurvey3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUserOnboardingSurvey userOnboardingSurvey1 = OASUserOnboardingSurvey.getExample();
        OASUserOnboardingSurvey userOnboardingSurvey2 = new OASUserOnboardingSurvey();

        System.assertEquals(userOnboardingSurvey1.hashCode(), userOnboardingSurvey1.hashCode());
        System.assertEquals(userOnboardingSurvey2.hashCode(), userOnboardingSurvey2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUserOnboardingSurvey userOnboardingSurvey1 = OASUserOnboardingSurvey.getExample();
        OASUserOnboardingSurvey userOnboardingSurvey2 = OASUserOnboardingSurvey.getExample();
        OASUserOnboardingSurvey userOnboardingSurvey3 = new OASUserOnboardingSurvey();
        OASUserOnboardingSurvey userOnboardingSurvey4 = new OASUserOnboardingSurvey();

        System.assert(userOnboardingSurvey1.equals(userOnboardingSurvey2));
        System.assert(userOnboardingSurvey3.equals(userOnboardingSurvey4));
        System.assertEquals(userOnboardingSurvey1.hashCode(), userOnboardingSurvey2.hashCode());
        System.assertEquals(userOnboardingSurvey3.hashCode(), userOnboardingSurvey4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUserOnboardingSurvey userOnboardingSurvey = new OASUserOnboardingSurvey();
        Map<String, String> propertymappings = userOnboardingSurvey.getPropertyMappings();
        System.assertEquals('teamType', propertymappings.get('team_type'));
        System.assertEquals('firstName', propertymappings.get('first_name'));
        System.assertEquals('lastName', propertymappings.get('last_name'));
        System.assertEquals('useCases', propertymappings.get('use_cases'));
        System.assertEquals('useCasesOther', propertymappings.get('use_cases_other'));
        System.assertEquals('organizationName', propertymappings.get('organization_name'));
        System.assertEquals('jobTitle', propertymappings.get('job_title'));
        System.assertEquals('departmentOther', propertymappings.get('department_other'));
        System.assertEquals('companySize', propertymappings.get('company_size'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASUserOnboardingSurvey userOnboardingSurvey = new OASUserOnboardingSurvey();
        System.assertEquals(new List<String>(), userOnboardingSurvey.useCases);
        System.assertEquals(new List<String>(), userOnboardingSurvey.useCasesOther);
        System.assertEquals(null, userOnboardingSurvey.login);
        System.assertEquals(null, userOnboardingSurvey.teamType);
        System.assertEquals(null, userOnboardingSurvey.firstName);
        System.assertEquals(null, userOnboardingSurvey.lastName);
        System.assertEquals(null, userOnboardingSurvey.organizationName);
        System.assertEquals(null, userOnboardingSurvey.jobTitle);
        System.assertEquals(null, userOnboardingSurvey.department);
        System.assertEquals(null, userOnboardingSurvey.departmentOther);
        System.assertEquals(null, userOnboardingSurvey.companySize);
        System.assertEquals(null, userOnboardingSurvey.version);
        System.assertEquals(null, userOnboardingSurvey.created);
        System.assertEquals(null, userOnboardingSurvey.modified);
    }
}