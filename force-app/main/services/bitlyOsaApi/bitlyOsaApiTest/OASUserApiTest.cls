@isTest
private class OASUserApiTest {
    /**
     * Get Platform Limits
     *
     * Fetch all platform limits and counts available for an organization
     */
    @isTest
    private static void getPlatformLimitsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'path' => '/organizations/{organization_guid}'
        };

        OASClient client;
        OASUserApi api;
        OASPlatformLimits response;
        OASPlatformLimits expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASUserApi(client);

        js = JSON.serialize(OASPlatformLimits.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPlatformLimits.getExample();
        response = (OASPlatformLimits) api.getPlatformLimits(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Retrieve a User
     *
     * Returns information for the current authenticated user.
     */
    @isTest
    private static void getUserTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASUserApi api;
        OASUser response;
        OASUser expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASUserApi(client);

        js = JSON.serialize(OASUser.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASUser.getExample();
        response = (OASUser) api.getUser();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Update a User
     *
     * Update fields in the user
     */
    @isTest
    private static void updateUserTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSUserUpdate' => ''
        };

        OASClient client;
        OASUserApi api;
        OASUser response;
        OASUser expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASUserApi(client);

        js = JSON.serialize(OASUser.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASUser.getExample();
        response = (OASUser) api.updateUser(params);
        System.assertEquals(expectedResponse, response);
    }
}