@isTest
private class OASGradientColorTest {
    @isTest
    private static void equalsSameInstance() {
        OASGradientColor gradientColor1 = OASGradientColor.getExample();
        OASGradientColor gradientColor2 = gradientColor1;
        OASGradientColor gradientColor3 = new OASGradientColor();
        OASGradientColor gradientColor4 = gradientColor3;

        System.assert(gradientColor1.equals(gradientColor2));
        System.assert(gradientColor2.equals(gradientColor1));
        System.assert(gradientColor1.equals(gradientColor1));
        System.assert(gradientColor3.equals(gradientColor4));
        System.assert(gradientColor4.equals(gradientColor3));
        System.assert(gradientColor3.equals(gradientColor3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGradientColor gradientColor1 = OASGradientColor.getExample();
        OASGradientColor gradientColor2 = OASGradientColor.getExample();
        OASGradientColor gradientColor3 = new OASGradientColor();
        OASGradientColor gradientColor4 = new OASGradientColor();

        System.assert(gradientColor1.equals(gradientColor2));
        System.assert(gradientColor2.equals(gradientColor1));
        System.assert(gradientColor3.equals(gradientColor4));
        System.assert(gradientColor4.equals(gradientColor3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGradientColor gradientColor1 = OASGradientColor.getExample();
        OASGradientColor gradientColor2 = new OASGradientColor();

        System.assertEquals(false, gradientColor1.equals('foo'));
        System.assertEquals(false, gradientColor2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGradientColor gradientColor1 = OASGradientColor.getExample();
        OASGradientColor gradientColor2 = new OASGradientColor();
        OASGradientColor gradientColor3;

        System.assertEquals(false, gradientColor1.equals(gradientColor3));
        System.assertEquals(false, gradientColor2.equals(gradientColor3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGradientColor gradientColor1 = OASGradientColor.getExample();
        OASGradientColor gradientColor2 = new OASGradientColor();

        System.assertEquals(gradientColor1.hashCode(), gradientColor1.hashCode());
        System.assertEquals(gradientColor2.hashCode(), gradientColor2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGradientColor gradientColor1 = OASGradientColor.getExample();
        OASGradientColor gradientColor2 = OASGradientColor.getExample();
        OASGradientColor gradientColor3 = new OASGradientColor();
        OASGradientColor gradientColor4 = new OASGradientColor();

        System.assert(gradientColor1.equals(gradientColor2));
        System.assert(gradientColor3.equals(gradientColor4));
        System.assertEquals(gradientColor1.hashCode(), gradientColor2.hashCode());
        System.assertEquals(gradientColor3.hashCode(), gradientColor4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASGradientColor gradientColor = new OASGradientColor();
        System.assertEquals(0, gradientColor.offset);
        System.assertEquals(null, gradientColor.color);
    }
}