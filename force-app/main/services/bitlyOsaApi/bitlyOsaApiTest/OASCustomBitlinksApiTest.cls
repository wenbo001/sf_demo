@isTest
private class OASCustomBitlinksApiTest {
    /**
     * Add Custom Bitlink
     *
     * Add a keyword (or &quot;custom back-half&quot;) to a Bitlink with a Custom Domain (domains must match). This endpoint can also be used for initial redirects to a link.
     */
    @isTest
    private static void addCustomBitlinkTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSAddCustomBitlink' => ''
        };

        OASClient client;
        OASCustomBitlinksApi api;
        OASCustomBitlink response;
        OASCustomBitlink expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASCustomBitlinksApi(client);

        js = JSON.serialize(OASCustomBitlink.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCustomBitlink.getExample();
        response = (OASCustomBitlink) api.addCustomBitlink(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get Clicks for a Custom Bitlink\&#39;s Entire History
     *
     * Returns the click counts for the specified link. This returns an array with clicks based on a date.
     */
    @isTest
    private static void getClicksForCustomBitlinkTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'customBitlink' => 'chauncey.ly/chauncey',
            'unit' => 'month',
            'units' => 1,
            'unitReference' => Datetime.valueOf('2006-01-02T15:04:05-0700')
        };

        OASClient client;
        OASCustomBitlinksApi api;
        OASClicks response;
        OASClicks expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASCustomBitlinksApi(client);

        js = JSON.serialize(OASClicks.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASClicks.getExample();
        response = (OASClicks) api.getClicksForCustomBitlink(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Retrieve Custom Bitlink
     *
     * Returns the details and history of the specified link.
     */
    @isTest
    private static void getCustomBitlinkTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'customBitlink' => 'chauncey.ly/chauncey'
        };

        OASClient client;
        OASCustomBitlinksApi api;
        OASCustomBitlink response;
        OASCustomBitlink expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASCustomBitlinksApi(client);

        js = JSON.serialize(OASCustomBitlink.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCustomBitlink.getExample();
        response = (OASCustomBitlink) api.getCustomBitlink(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get Metrics for a Custom Bitlink by Destination
     *
     * Returns click metrics for the specified link by its historical destinations.
     */
    @isTest
    private static void getCustomBitlinkMetricsByDestinationTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'customBitlink' => 'chauncey.ly/chauncey',
            'unit' => 'month',
            'units' => 1,
            'unitReference' => Datetime.valueOf('2006-01-02T15:04:05-0700')
        };

        OASClient client;
        OASCustomBitlinksApi api;
        OASClickMetrics response;
        OASClickMetrics expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASCustomBitlinksApi(client);

        js = JSON.serialize(OASClickMetrics.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASClickMetrics.getExample();
        response = (OASClickMetrics) api.getCustomBitlinkMetricsByDestination(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Update Custom Bitlink
     *
     * Move a keyword (or custom back-half) to a different Bitlink (domains must match).
     */
    @isTest
    private static void updateCustomBitlinkTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'customBitlink' => 'chauncey.ly/chauncey',
            'oaSUpdateCustomBitlink' => ''
        };

        OASClient client;
        OASCustomBitlinksApi api;
        OASCustomBitlink response;
        OASCustomBitlink expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASCustomBitlinksApi(client);

        js = JSON.serialize(OASCustomBitlink.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCustomBitlink.getExample();
        response = (OASCustomBitlink) api.updateCustomBitlink(params);
        System.assertEquals(expectedResponse, response);
    }
}