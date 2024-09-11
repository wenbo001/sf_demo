@isTest
private class OASBSDsApiTest {
    /**
     * Get BSDs
     *
     * Fetch all Branded Short Domains
     */
    @isTest
    private static void getBSDsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASBSDsApi api;
        OASBSDsResponse response;
        OASBSDsResponse expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASBSDsApi(client);

        js = JSON.serialize(OASBSDsResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASBSDsResponse.getExample();
        response = (OASBSDsResponse) api.getBSDs();
        System.assertEquals(expectedResponse, response);
    }
}