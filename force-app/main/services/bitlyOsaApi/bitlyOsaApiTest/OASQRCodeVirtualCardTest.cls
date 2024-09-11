@isTest
private class OASQRCodeVirtualCardTest {
    @isTest
    private static void equalsSameInstance() {
        OASQRCodeVirtualCard qrCodeVirtualCard1 = OASQRCodeVirtualCard.getExample();
        OASQRCodeVirtualCard qrCodeVirtualCard2 = qrCodeVirtualCard1;
        OASQRCodeVirtualCard qrCodeVirtualCard3 = new OASQRCodeVirtualCard();
        OASQRCodeVirtualCard qrCodeVirtualCard4 = qrCodeVirtualCard3;

        System.assert(qrCodeVirtualCard1.equals(qrCodeVirtualCard2));
        System.assert(qrCodeVirtualCard2.equals(qrCodeVirtualCard1));
        System.assert(qrCodeVirtualCard1.equals(qrCodeVirtualCard1));
        System.assert(qrCodeVirtualCard3.equals(qrCodeVirtualCard4));
        System.assert(qrCodeVirtualCard4.equals(qrCodeVirtualCard3));
        System.assert(qrCodeVirtualCard3.equals(qrCodeVirtualCard3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQRCodeVirtualCard qrCodeVirtualCard1 = OASQRCodeVirtualCard.getExample();
        OASQRCodeVirtualCard qrCodeVirtualCard2 = OASQRCodeVirtualCard.getExample();
        OASQRCodeVirtualCard qrCodeVirtualCard3 = new OASQRCodeVirtualCard();
        OASQRCodeVirtualCard qrCodeVirtualCard4 = new OASQRCodeVirtualCard();

        System.assert(qrCodeVirtualCard1.equals(qrCodeVirtualCard2));
        System.assert(qrCodeVirtualCard2.equals(qrCodeVirtualCard1));
        System.assert(qrCodeVirtualCard3.equals(qrCodeVirtualCard4));
        System.assert(qrCodeVirtualCard4.equals(qrCodeVirtualCard3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQRCodeVirtualCard qrCodeVirtualCard1 = OASQRCodeVirtualCard.getExample();
        OASQRCodeVirtualCard qrCodeVirtualCard2 = new OASQRCodeVirtualCard();

        System.assertEquals(false, qrCodeVirtualCard1.equals('foo'));
        System.assertEquals(false, qrCodeVirtualCard2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQRCodeVirtualCard qrCodeVirtualCard1 = OASQRCodeVirtualCard.getExample();
        OASQRCodeVirtualCard qrCodeVirtualCard2 = new OASQRCodeVirtualCard();
        OASQRCodeVirtualCard qrCodeVirtualCard3;

        System.assertEquals(false, qrCodeVirtualCard1.equals(qrCodeVirtualCard3));
        System.assertEquals(false, qrCodeVirtualCard2.equals(qrCodeVirtualCard3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQRCodeVirtualCard qrCodeVirtualCard1 = OASQRCodeVirtualCard.getExample();
        OASQRCodeVirtualCard qrCodeVirtualCard2 = new OASQRCodeVirtualCard();

        System.assertEquals(qrCodeVirtualCard1.hashCode(), qrCodeVirtualCard1.hashCode());
        System.assertEquals(qrCodeVirtualCard2.hashCode(), qrCodeVirtualCard2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQRCodeVirtualCard qrCodeVirtualCard1 = OASQRCodeVirtualCard.getExample();
        OASQRCodeVirtualCard qrCodeVirtualCard2 = OASQRCodeVirtualCard.getExample();
        OASQRCodeVirtualCard qrCodeVirtualCard3 = new OASQRCodeVirtualCard();
        OASQRCodeVirtualCard qrCodeVirtualCard4 = new OASQRCodeVirtualCard();

        System.assert(qrCodeVirtualCard1.equals(qrCodeVirtualCard2));
        System.assert(qrCodeVirtualCard3.equals(qrCodeVirtualCard4));
        System.assertEquals(qrCodeVirtualCard1.hashCode(), qrCodeVirtualCard2.hashCode());
        System.assertEquals(qrCodeVirtualCard3.hashCode(), qrCodeVirtualCard4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQRCodeVirtualCard qrCodeVirtualCard = new OASQRCodeVirtualCard();
        Map<String, String> propertymappings = qrCodeVirtualCard.getPropertyMappings();
        System.assertEquals('firstName', propertymappings.get('first_name'));
        System.assertEquals('lastName', propertymappings.get('last_name'));
        System.assertEquals('phoneNumbers', propertymappings.get('phone_numbers'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASQRCodeVirtualCard qrCodeVirtualCard = new OASQRCodeVirtualCard();
        System.assertEquals(new List<String>(), qrCodeVirtualCard.phoneNumbers);
        System.assertEquals(null, qrCodeVirtualCard.firstName);
        System.assertEquals(null, qrCodeVirtualCard.lastName);
    }
}