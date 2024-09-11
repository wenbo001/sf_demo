@isTest
private class OASTextTest {
    @isTest
    private static void equalsSameInstance() {
        OASText text1 = OASText.getExample();
        OASText text2 = text1;
        OASText text3 = new OASText();
        OASText text4 = text3;

        System.assert(text1.equals(text2));
        System.assert(text2.equals(text1));
        System.assert(text1.equals(text1));
        System.assert(text3.equals(text4));
        System.assert(text4.equals(text3));
        System.assert(text3.equals(text3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASText text1 = OASText.getExample();
        OASText text2 = OASText.getExample();
        OASText text3 = new OASText();
        OASText text4 = new OASText();

        System.assert(text1.equals(text2));
        System.assert(text2.equals(text1));
        System.assert(text3.equals(text4));
        System.assert(text4.equals(text3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASText text1 = OASText.getExample();
        OASText text2 = new OASText();

        System.assertEquals(false, text1.equals('foo'));
        System.assertEquals(false, text2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASText text1 = OASText.getExample();
        OASText text2 = new OASText();
        OASText text3;

        System.assertEquals(false, text1.equals(text3));
        System.assertEquals(false, text2.equals(text3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASText text1 = OASText.getExample();
        OASText text2 = new OASText();

        System.assertEquals(text1.hashCode(), text1.hashCode());
        System.assertEquals(text2.hashCode(), text2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASText text1 = OASText.getExample();
        OASText text2 = OASText.getExample();
        OASText text3 = new OASText();
        OASText text4 = new OASText();

        System.assert(text1.equals(text2));
        System.assert(text3.equals(text4));
        System.assertEquals(text1.hashCode(), text2.hashCode());
        System.assertEquals(text3.hashCode(), text4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASText text = new OASText();
        System.assertEquals('#ffffff', text.color);
        System.assertEquals(null, text.content);
    }
}