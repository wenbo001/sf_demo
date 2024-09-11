@isTest
private class OASTagsTest {
    @isTest
    private static void equalsSameInstance() {
        OASTags tags1 = OASTags.getExample();
        OASTags tags2 = tags1;
        OASTags tags3 = new OASTags();
        OASTags tags4 = tags3;

        System.assert(tags1.equals(tags2));
        System.assert(tags2.equals(tags1));
        System.assert(tags1.equals(tags1));
        System.assert(tags3.equals(tags4));
        System.assert(tags4.equals(tags3));
        System.assert(tags3.equals(tags3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASTags tags1 = OASTags.getExample();
        OASTags tags2 = OASTags.getExample();
        OASTags tags3 = new OASTags();
        OASTags tags4 = new OASTags();

        System.assert(tags1.equals(tags2));
        System.assert(tags2.equals(tags1));
        System.assert(tags3.equals(tags4));
        System.assert(tags4.equals(tags3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASTags tags1 = OASTags.getExample();
        OASTags tags2 = new OASTags();

        System.assertEquals(false, tags1.equals('foo'));
        System.assertEquals(false, tags2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASTags tags1 = OASTags.getExample();
        OASTags tags2 = new OASTags();
        OASTags tags3;

        System.assertEquals(false, tags1.equals(tags3));
        System.assertEquals(false, tags2.equals(tags3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASTags tags1 = OASTags.getExample();
        OASTags tags2 = new OASTags();

        System.assertEquals(tags1.hashCode(), tags1.hashCode());
        System.assertEquals(tags2.hashCode(), tags2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASTags tags1 = OASTags.getExample();
        OASTags tags2 = OASTags.getExample();
        OASTags tags3 = new OASTags();
        OASTags tags4 = new OASTags();

        System.assert(tags1.equals(tags2));
        System.assert(tags3.equals(tags4));
        System.assertEquals(tags1.hashCode(), tags2.hashCode());
        System.assertEquals(tags3.hashCode(), tags4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASTags tags = new OASTags();
        System.assertEquals(new List<String>(), tags.tags);
    }
}