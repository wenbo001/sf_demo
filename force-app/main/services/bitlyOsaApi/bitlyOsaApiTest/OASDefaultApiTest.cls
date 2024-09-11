@isTest
private class OASDefaultApiTest {
    /**
     * Retrieve OAuth App
     *
     * Retrieve the details for the provided OAuth App client ID
     */
    @isTest
    private static void getOAuthAppTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'clientId' => '1234a56b789cd0e123456fg7h8901j123km45n6p'
        };

        OASClient client;
        OASDefaultApi api;
        OASOAuthApp response;
        OASOAuthApp expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASDefaultApi(client);

        js = JSON.serialize(OASOAuthApp.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASOAuthApp.getExample();
        response = (OASOAuthApp) api.getOAuthApp(params);
        System.assertEquals(expectedResponse, response);
    }
}