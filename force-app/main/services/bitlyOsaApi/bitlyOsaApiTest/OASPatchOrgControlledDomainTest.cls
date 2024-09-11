@isTest
private class OASPatchOrgControlledDomainTest {
    @isTest
    private static void equalsSameInstance() {
        OASPatchOrgControlledDomain patchOrgControlledDomain1 = OASPatchOrgControlledDomain.getExample();
        OASPatchOrgControlledDomain patchOrgControlledDomain2 = patchOrgControlledDomain1;
        OASPatchOrgControlledDomain patchOrgControlledDomain3 = new OASPatchOrgControlledDomain();
        OASPatchOrgControlledDomain patchOrgControlledDomain4 = patchOrgControlledDomain3;

        System.assert(patchOrgControlledDomain1.equals(patchOrgControlledDomain2));
        System.assert(patchOrgControlledDomain2.equals(patchOrgControlledDomain1));
        System.assert(patchOrgControlledDomain1.equals(patchOrgControlledDomain1));
        System.assert(patchOrgControlledDomain3.equals(patchOrgControlledDomain4));
        System.assert(patchOrgControlledDomain4.equals(patchOrgControlledDomain3));
        System.assert(patchOrgControlledDomain3.equals(patchOrgControlledDomain3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPatchOrgControlledDomain patchOrgControlledDomain1 = OASPatchOrgControlledDomain.getExample();
        OASPatchOrgControlledDomain patchOrgControlledDomain2 = OASPatchOrgControlledDomain.getExample();
        OASPatchOrgControlledDomain patchOrgControlledDomain3 = new OASPatchOrgControlledDomain();
        OASPatchOrgControlledDomain patchOrgControlledDomain4 = new OASPatchOrgControlledDomain();

        System.assert(patchOrgControlledDomain1.equals(patchOrgControlledDomain2));
        System.assert(patchOrgControlledDomain2.equals(patchOrgControlledDomain1));
        System.assert(patchOrgControlledDomain3.equals(patchOrgControlledDomain4));
        System.assert(patchOrgControlledDomain4.equals(patchOrgControlledDomain3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPatchOrgControlledDomain patchOrgControlledDomain1 = OASPatchOrgControlledDomain.getExample();
        OASPatchOrgControlledDomain patchOrgControlledDomain2 = new OASPatchOrgControlledDomain();

        System.assertEquals(false, patchOrgControlledDomain1.equals('foo'));
        System.assertEquals(false, patchOrgControlledDomain2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPatchOrgControlledDomain patchOrgControlledDomain1 = OASPatchOrgControlledDomain.getExample();
        OASPatchOrgControlledDomain patchOrgControlledDomain2 = new OASPatchOrgControlledDomain();
        OASPatchOrgControlledDomain patchOrgControlledDomain3;

        System.assertEquals(false, patchOrgControlledDomain1.equals(patchOrgControlledDomain3));
        System.assertEquals(false, patchOrgControlledDomain2.equals(patchOrgControlledDomain3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPatchOrgControlledDomain patchOrgControlledDomain1 = OASPatchOrgControlledDomain.getExample();
        OASPatchOrgControlledDomain patchOrgControlledDomain2 = new OASPatchOrgControlledDomain();

        System.assertEquals(patchOrgControlledDomain1.hashCode(), patchOrgControlledDomain1.hashCode());
        System.assertEquals(patchOrgControlledDomain2.hashCode(), patchOrgControlledDomain2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPatchOrgControlledDomain patchOrgControlledDomain1 = OASPatchOrgControlledDomain.getExample();
        OASPatchOrgControlledDomain patchOrgControlledDomain2 = OASPatchOrgControlledDomain.getExample();
        OASPatchOrgControlledDomain patchOrgControlledDomain3 = new OASPatchOrgControlledDomain();
        OASPatchOrgControlledDomain patchOrgControlledDomain4 = new OASPatchOrgControlledDomain();

        System.assert(patchOrgControlledDomain1.equals(patchOrgControlledDomain2));
        System.assert(patchOrgControlledDomain3.equals(patchOrgControlledDomain4));
        System.assertEquals(patchOrgControlledDomain1.hashCode(), patchOrgControlledDomain2.hashCode());
        System.assertEquals(patchOrgControlledDomain3.hashCode(), patchOrgControlledDomain4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPatchOrgControlledDomain patchOrgControlledDomain = new OASPatchOrgControlledDomain();
        Map<String, String> propertymappings = patchOrgControlledDomain.getPropertyMappings();
        System.assertEquals('isActive', propertymappings.get('is_active'));
    }
}