@isTest
private class OASBitlinksApiTest {
    /**
     * Shorten a Link
     *
     * Converts a long url to a Bitlink. You may see errors returned from this endpoint - &quot;BRANDED_LINK_MONTHLY_LIMIT_EXCEEDED&quot; occurs if you have shortened more links than your account is configured for for the month, and &quot;DNS_CONFIGURATION_ERROR&quot; occurs if you are attempting to shorten links against a custom domain which doesn\&#39;t have DNS properly configured.
     */
//    @isTest
//    private static void createBitlinkTest() {
//        HttpResponse res = new HttpResponse();
//        res.setStatusCode(200);
//        res.setStatus('OK');
//        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));
//
//        Map<String, Object> params = new Map<String, Object>{
//            'oaSShorten' => ''
//        };
//
//        OASClient client;
//        OASBitlinksApi api;
//        OASShortenBitlinkBody response;
//        OASShortenBitlinkBody expectedResponse;
//        String js = '';
//
//        client = new OASClient();
//        api = new OASBitlinksApi(client);
//
//        js = JSON.serialize(OASShortenBitlinkBody.getExample());
//        res.setHeader('Content-Type', 'application/json');
//        res.setBody(js);
//        expectedResponse = OASShortenBitlinkBody.getExample();
//        response = (OASShortenBitlinkBody) api.createBitlink(params);
//        System.assertEquals(expectedResponse, response);
//    }
//
//    /**
//     * Create a QR Code
//     *
//     * Creates a QR code for existing Bitlink
//     */
//    @isTest
//    private static void createBitlinkQRCodeTest() {
//        HttpResponse res = new HttpResponse();
//        res.setStatusCode(200);
//        res.setStatus('OK');
//        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));
//
//        Map<String, Object> params = new Map<String, Object>{
//            'bitlink' => bit.ly/12a4b6c,
//            'oaSQRCustomizations' => ''
//        };
//
//        OASClient client;
//        OASBitlinksApi api;
//        OASFullQRCode response;
//        OASFullQRCode expectedResponse;
//        String js = '';
//
//        client = new OASClient();
//        api = new OASBitlinksApi(client);
//
//        js = JSON.serialize(OASFullQRCode.getExample());
//        res.setHeader('Content-Type', 'application/json');
//        res.setBody(js);
//        expectedResponse = OASFullQRCode.getExample();
//        response = (OASFullQRCode) api.createBitlinkQRCode(params);
//        System.assertEquals(expectedResponse, response);
//    }
//
//    /**
//     * Create a Bitlink
//     *
//     * Converts a long url to a Bitlink and sets additional parameters. You may see errors returned from this endpoint - &quot;BRANDED_LINK_MONTHLY_LIMIT_EXCEEDED&quot; occurs if you have shortened more links than your account is configured for for the month, and &quot;DNS_CONFIGURATION_ERROR&quot; occurs if you are attempting to shorten links against a custom domain which doesn\&#39;t have DNS properly configured.
//     */
//    @isTest
//    private static void createFullBitlinkTest() {
//        HttpResponse res = new HttpResponse();
//        res.setStatusCode(201);
//        res.setStatus('Created');
//        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));
//
//        Map<String, Object> params = new Map<String, Object>{
//            'oaSFullShorten' => ''
//        };
//
//        OASClient client;
//        OASBitlinksApi api;
//        OASBitlinkBody response;
//        OASBitlinkBody expectedResponse;
//        String js = '';
//
//        client = new OASClient();
//        api = new OASBitlinksApi(client);
//
//        js = JSON.serialize(OASBitlinkBody.getExample());
//        res.setHeader('Content-Type', 'application/json');
//        res.setBody(js);
//        expectedResponse = OASBitlinkBody.getExample();
//        response = (OASBitlinkBody) api.createFullBitlink(params);
//        System.assertEquals(expectedResponse, response);
//    }
//
//    /**
//     * Delete a Bitlink
//     *
//     * Delete an unedited hash Bitlink.
//     */
//    @isTest
//    private static void deleteBitlinkTest() {
//        HttpResponse res = new HttpResponse();
//        res.setStatusCode(200);
//        res.setStatus('OK');
//        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));
//
//        Map<String, Object> params = new Map<String, Object>{
//            'bitlink' => bit.ly/12a4b6c
//        };
//
//        OASClient client;
//        OASBitlinksApi api;
//        OASLinkDeletionResponse response;
//        OASLinkDeletionResponse expectedResponse;
//        String js = '';
//
//        client = new OASClient();
//        api = new OASBitlinksApi(client);
//
//        js = JSON.serialize(OASLinkDeletionResponse.getExample());
//        res.setHeader('Content-Type', 'application/json');
//        res.setBody(js);
//        expectedResponse = OASLinkDeletionResponse.getExample();
//        response = (OASLinkDeletionResponse) api.deleteBitlink(params);
//        System.assertEquals(expectedResponse, response);
//    }
//
//    /**
//     * Expand a Bitlink
//     *
//     * Returns the short link and long URL for the specified link.
//     */
//    @isTest
//    private static void expandBitlinkTest() {
//        HttpResponse res = new HttpResponse();
//        res.setStatusCode(200);
//        res.setStatus('OK');
//        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));
//
//        Map<String, Object> params = new Map<String, Object>{
//            'oaSExpandBitlink' => ''
//        };
//
//        OASClient client;
//        OASBitlinksApi api;
//        OASExpandedBitlink response;
//        OASExpandedBitlink expectedResponse;
//        String js = '';
//
//        client = new OASClient();
//        api = new OASBitlinksApi(client);
//
//        js = JSON.serialize(OASExpandedBitlink.getExample());
//        res.setHeader('Content-Type', 'application/json');
//        res.setBody(js);
//        expectedResponse = OASExpandedBitlink.getExample();
//        response = (OASExpandedBitlink) api.expandBitlink(params);
//        System.assertEquals(expectedResponse, response);
//    }
//
//    /**
//     * Retrieve a Bitlink
//     *
//     * Returns information for the specified link.
//     */
//    @isTest
//    private static void getBitlinkTest() {
//        HttpResponse res = new HttpResponse();
//        res.setStatusCode(200);
//        res.setStatus('OK');
//        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));
//
//        Map<String, Object> params = new Map<String, Object>{
//            'bitlink' => bit.ly/12a4b6c
//        };
//
//        OASClient client;
//        OASBitlinksApi api;
//        OASBitlinkBody response;
//        OASBitlinkBody expectedResponse;
//        String js = '';
//
//        client = new OASClient();
//        api = new OASBitlinksApi(client);
//
//        js = JSON.serialize(OASBitlinkBody.getExample());
//        res.setHeader('Content-Type', 'application/json');
//        res.setBody(js);
//        expectedResponse = OASBitlinkBody.getExample();
//        response = (OASBitlinkBody) api.getBitlink(params);
//        System.assertEquals(expectedResponse, response);
//    }
//
//    /**
//     * Retrieve a QR Code
//     *
//     * Retrieves a QR code for a Bitlink.
//     */
//    @isTest
//    private static void getBitlinkQRCodeTest() {
//        HttpResponse res = new HttpResponse();
//        res.setStatusCode(200);
//        res.setStatus('OK');
//        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));
//
//        Map<String, Object> params = new Map<String, Object>{
//            'bitlink' => bit.ly/12a4b6c,
//            'imageFormat' => svg
//        };
//
//        OASClient client;
//        OASBitlinksApi api;
//        OASFullQRCode response;
//        OASFullQRCode expectedResponse;
//        String js = '';
//
//        client = new OASClient();
//        api = new OASBitlinksApi(client);
//
//        js = JSON.serialize(OASFullQRCode.getExample());
//        res.setHeader('Content-Type', 'application/json');
//        res.setBody(js);
//        expectedResponse = OASFullQRCode.getExample();
//        response = (OASFullQRCode) api.getBitlinkQRCode(params);
//        System.assertEquals(expectedResponse, response);
//    }
//
//    /**
//     * Retrieve Bitlinks by Group
//     *
//     * Returns a paginated collection of Bitlinks for a group. The list of custom bitlinks has newest entries first.
//     */
//    @isTest
//    private static void getBitlinksByGroupTest() {
//        HttpResponse res = new HttpResponse();
//        res.setStatusCode(200);
//        res.setStatus('OK');
//        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));
//
//        Map<String, Object> params = new Map<String, Object>{
//            'groupGuid' => Ba1bc23dE4F,
//            'size' => 10,
//            'searchAfter' => b746bca90ea9f77b,
//            'query' => api,
//            'createdBefore' => 1694529902,
//            'createdAfter' => 1694529902,
//            'archived' => both,
//            'deeplinks' => both,
//            'domainDeeplinks' => both,
//            'campaignGuid' => Ca1bcd2EFGh,
//            'channelGuid' => Ha1bc2DefGh,
//            'customBitlink' => both,
//            'tags' => ["bitly","api"],
//            'launchpadIds' => ["M1234567890"],
//            'encodingLogin' => ["chauncey"]
//        };
//
//        OASClient client;
//        OASBitlinksApi api;
//        OASBitlinks response;
//        OASBitlinks expectedResponse;
//        String js = '';
//
//        client = new OASClient();
//        api = new OASBitlinksApi(client);
//
//        js = JSON.serialize(OASBitlinks.getExample());
//        res.setHeader('Content-Type', 'application/json');
//        res.setBody(js);
//        expectedResponse = OASBitlinks.getExample();
//        response = (OASBitlinks) api.getBitlinksByGroup(params);
//        System.assertEquals(expectedResponse, response);
//    }
//
//    /**
//     * Get Clicks for a Bitlink
//     *
//     * Returns the click counts for the specified link in an array based on a date.
//     */
//    @isTest
//    private static void getClicksForBitlinkTest() {
//        HttpResponse res = new HttpResponse();
//        res.setStatusCode(200);
//        res.setStatus('OK');
//        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));
//
//        Map<String, Object> params = new Map<String, Object>{
//            'bitlink' => bit.ly/12a4b6c,
//            'unit' => month,
//            'units' => 1,
//            'unitReference' => 2006-01-02T15:04:05-0700
//        };
//
//        OASClient client;
//        OASBitlinksApi api;
//        OASClicks response;
//        OASClicks expectedResponse;
//        String js = '';
//
//        client = new OASClient();
//        api = new OASBitlinksApi(client);
//
//        js = JSON.serialize(OASClicks.getExample());
//        res.setHeader('Content-Type', 'application/json');
//        res.setBody(js);
//        expectedResponse = OASClicks.getExample();
//        response = (OASClicks) api.getClicksForBitlink(params);
//        System.assertEquals(expectedResponse, response);
//
//
//        js = JSON.serialize(OASClicks.getExample());
//        res.setHeader('Content-Type', 'text/csv');
//        res.setBody(js);
//        expectedResponse = OASClicks.getExample();
//        response = (OASClicks) api.getClicksForBitlink(params);
//        System.assertEquals(expectedResponse, response);
//    }
//
//    /**
//     * Get a Clicks Summary for a Bitlink
//     *
//     * Returns the click counts for the specified link rolled up into a single field.
//     */
//    @isTest
//    private static void getClicksSummaryForBitlinkTest() {
//        HttpResponse res = new HttpResponse();
//        res.setStatusCode(200);
//        res.setStatus('OK');
//        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));
//
//        Map<String, Object> params = new Map<String, Object>{
//            'bitlink' => bit.ly/12a4b6c,
//            'unit' => month,
//            'units' => 1,
//            'unitReference' => 2006-01-02T15:04:05-0700
//        };
//
//        OASClient client;
//        OASBitlinksApi api;
//        OASClicksSummary response;
//        OASClicksSummary expectedResponse;
//        String js = '';
//
//        client = new OASClient();
//        api = new OASBitlinksApi(client);
//
//        js = JSON.serialize(OASClicksSummary.getExample());
//        res.setHeader('Content-Type', 'application/json');
//        res.setBody(js);
//        expectedResponse = OASClicksSummary.getExample();
//        response = (OASClicksSummary) api.getClicksSummaryForBitlink(params);
//        System.assertEquals(expectedResponse, response);
//    }
//
//    /**
//     * Get Metrics for a Bitlink by City
//     *
//     * Returns the city origins of click traffic for the specified link.
//     */
//    @isTest
//    private static void getMetricsForBitlinkByCitiesTest() {
//        HttpResponse res = new HttpResponse();
//        res.setStatusCode(200);
//        res.setStatus('OK');
//        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));
//
//        Map<String, Object> params = new Map<String, Object>{
//            'bitlink' => bit.ly/12a4b6c,
//            'unit' => month,
//            'units' => 1,
//            'size' => 10,
//            'unitReference' => 2006-01-02T15:04:05-0700
//        };
//
//        OASClient client;
//        OASBitlinksApi api;
//        OASCityMetrics response;
//        OASCityMetrics expectedResponse;
//        String js = '';
//
//        client = new OASClient();
//        api = new OASBitlinksApi(client);
//
//        js = JSON.serialize(OASCityMetrics.getExample());
//        res.setHeader('Content-Type', 'application/json');
//        res.setBody(js);
//        expectedResponse = OASCityMetrics.getExample();
//        response = (OASCityMetrics) api.getMetricsForBitlinkByCities(params);
//        System.assertEquals(expectedResponse, response);
//
//
//        js = JSON.serialize(OASCityMetrics.getExample());
//        res.setHeader('Content-Type', 'text/csv');
//        res.setBody(js);
//        expectedResponse = OASCityMetrics.getExample();
//        response = (OASCityMetrics) api.getMetricsForBitlinkByCities(params);
//        System.assertEquals(expectedResponse, response);
//    }
//
//    /**
//     * Get Metrics for a Bitlink by Country
//     *
//     * Returns the country origins of click traffic for the specified link.
//     */
//    @isTest
//    private static void getMetricsForBitlinkByCountriesTest() {
//        HttpResponse res = new HttpResponse();
//        res.setStatusCode(200);
//        res.setStatus('OK');
//        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));
//
//        Map<String, Object> params = new Map<String, Object>{
//            'bitlink' => bit.ly/12a4b6c,
//            'unit' => month,
//            'units' => 1,
//            'size' => 10,
//            'unitReference' => 2006-01-02T15:04:05-0700
//        };
//
//        OASClient client;
//        OASBitlinksApi api;
//        OASClickMetrics response;
//        OASClickMetrics expectedResponse;
//        String js = '';
//
//        client = new OASClient();
//        api = new OASBitlinksApi(client);
//
//        js = JSON.serialize(OASClickMetrics.getExample());
//        res.setHeader('Content-Type', 'application/json');
//        res.setBody(js);
//        expectedResponse = OASClickMetrics.getExample();
//        response = (OASClickMetrics) api.getMetricsForBitlinkByCountries(params);
//        System.assertEquals(expectedResponse, response);
//
//
//        js = JSON.serialize(OASClickMetrics.getExample());
//        res.setHeader('Content-Type', 'text/csv');
//        res.setBody(js);
//        expectedResponse = OASClickMetrics.getExample();
//        response = (OASClickMetrics) api.getMetricsForBitlinkByCountries(params);
//        System.assertEquals(expectedResponse, response);
//    }
//
//    /**
//     * Get Metrics for a Bitlink by Device Type
//     *
//     * Returns the device types generating click traffic to the specified link.
//     */
//    @isTest
//    private static void getMetricsForBitlinkByDevicesTest() {
//        HttpResponse res = new HttpResponse();
//        res.setStatusCode(200);
//        res.setStatus('OK');
//        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));
//
//        Map<String, Object> params = new Map<String, Object>{
//            'bitlink' => bit.ly/12a4b6c,
//            'unit' => month,
//            'units' => 1,
//            'size' => 10,
//            'unitReference' => 2006-01-02T15:04:05-0700
//        };
//
//        OASClient client;
//        OASBitlinksApi api;
//        OASDeviceMetrics response;
//        OASDeviceMetrics expectedResponse;
//        String js = '';
//
//        client = new OASClient();
//        api = new OASBitlinksApi(client);
//
//        js = JSON.serialize(OASDeviceMetrics.getExample());
//        res.setHeader('Content-Type', 'application/json');
//        res.setBody(js);
//        expectedResponse = OASDeviceMetrics.getExample();
//        response = (OASDeviceMetrics) api.getMetricsForBitlinkByDevices(params);
//        System.assertEquals(expectedResponse, response);
//
//
//        js = JSON.serialize(OASDeviceMetrics.getExample());
//        res.setHeader('Content-Type', 'text/csv');
//        res.setBody(js);
//        expectedResponse = OASDeviceMetrics.getExample();
//        response = (OASDeviceMetrics) api.getMetricsForBitlinkByDevices(params);
//        System.assertEquals(expectedResponse, response);
//    }
//
//    /**
//     * Get Metrics for a Bitlink by Referrer Name
//     *
//     * Returns referrer click counts for the specified link.
//     */
//    @isTest
//    private static void getMetricsForBitlinkByReferrerNameTest() {
//        HttpResponse res = new HttpResponse();
//        res.setStatusCode(200);
//        res.setStatus('OK');
//        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));
//
//        Map<String, Object> params = new Map<String, Object>{
//            'bitlink' => bit.ly/12a4b6c,
//            'unit' => month,
//            'units' => 1,
//            'size' => 10,
//            'unitReference' => 2006-01-02T15:04:05-0700
//        };
//
//        OASClient client;
//        OASBitlinksApi api;
//        OASClickMetrics response;
//        OASClickMetrics expectedResponse;
//        String js = '';
//
//        client = new OASClient();
//        api = new OASBitlinksApi(client);
//
//        js = JSON.serialize(OASClickMetrics.getExample());
//        res.setHeader('Content-Type', 'application/json');
//        res.setBody(js);
//        expectedResponse = OASClickMetrics.getExample();
//        response = (OASClickMetrics) api.getMetricsForBitlinkByReferrerName(params);
//        System.assertEquals(expectedResponse, response);
//
//
//        js = JSON.serialize(OASClickMetrics.getExample());
//        res.setHeader('Content-Type', 'text/csv');
//        res.setBody(js);
//        expectedResponse = OASClickMetrics.getExample();
//        response = (OASClickMetrics) api.getMetricsForBitlinkByReferrerName(params);
//        System.assertEquals(expectedResponse, response);
//    }
//
//    /**
//     * Get Metrics for a Bitlink by Referrers
//     *
//     * Returns referrer click counts for the specified link.
//     */
//    @isTest
//    private static void getMetricsForBitlinkByReferrersTest() {
//        HttpResponse res = new HttpResponse();
//        res.setStatusCode(200);
//        res.setStatus('OK');
//        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));
//
//        Map<String, Object> params = new Map<String, Object>{
//            'bitlink' => bit.ly/12a4b6c,
//            'unit' => month,
//            'units' => 1,
//            'size' => 10,
//            'unitReference' => 2006-01-02T15:04:05-0700
//        };
//
//        OASClient client;
//        OASBitlinksApi api;
//        OASClickMetrics response;
//        OASClickMetrics expectedResponse;
//        String js = '';
//
//        client = new OASClient();
//        api = new OASBitlinksApi(client);
//
//        js = JSON.serialize(OASClickMetrics.getExample());
//        res.setHeader('Content-Type', 'application/json');
//        res.setBody(js);
//        expectedResponse = OASClickMetrics.getExample();
//        response = (OASClickMetrics) api.getMetricsForBitlinkByReferrers(params);
//        System.assertEquals(expectedResponse, response);
//
//
//        js = JSON.serialize(OASClickMetrics.getExample());
//        res.setHeader('Content-Type', 'text/csv');
//        res.setBody(js);
//        expectedResponse = OASClickMetrics.getExample();
//        response = (OASClickMetrics) api.getMetricsForBitlinkByReferrers(params);
//        System.assertEquals(expectedResponse, response);
//    }
//
//    /**
//     * Get Metrics for a Bitlink by Referrers by Domain
//     *
//     * Returns click metrics grouped by referrers for the specified link.
//     */
//    @isTest
//    private static void getMetricsForBitlinkByReferrersByDomainsTest() {
//        HttpResponse res = new HttpResponse();
//        res.setStatusCode(200);
//        res.setStatus('OK');
//        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));
//
//        Map<String, Object> params = new Map<String, Object>{
//            'bitlink' => bit.ly/12a4b6c,
//            'unit' => month,
//            'units' => 1,
//            'size' => 10,
//            'unitReference' => 2006-01-02T15:04:05-0700
//        };
//
//        OASClient client;
//        OASBitlinksApi api;
//        OASReferrersByDomains response;
//        OASReferrersByDomains expectedResponse;
//        String js = '';
//
//        client = new OASClient();
//        api = new OASBitlinksApi(client);
//
//        js = JSON.serialize(OASReferrersByDomains.getExample());
//        res.setHeader('Content-Type', 'application/json');
//        res.setBody(js);
//        expectedResponse = OASReferrersByDomains.getExample();
//        response = (OASReferrersByDomains) api.getMetricsForBitlinkByReferrersByDomains(params);
//        System.assertEquals(expectedResponse, response);
//    }
//
//    /**
//     * Get Metrics for a Bitlink by Referring Domains
//     *
//     * Returns the referring domain click counts for the specified link.
//     */
//    @isTest
//    private static void getMetricsForBitlinkByReferringDomainsTest() {
//        HttpResponse res = new HttpResponse();
//        res.setStatusCode(200);
//        res.setStatus('OK');
//        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));
//
//        Map<String, Object> params = new Map<String, Object>{
//            'bitlink' => bit.ly/12a4b6c,
//            'unit' => month,
//            'units' => 1,
//            'size' => 10,
//            'unitReference' => 2006-01-02T15:04:05-0700
//        };
//
//        OASClient client;
//        OASBitlinksApi api;
//        OASClickMetrics response;
//        OASClickMetrics expectedResponse;
//        String js = '';
//
//        client = new OASClient();
//        api = new OASBitlinksApi(client);
//
//        js = JSON.serialize(OASClickMetrics.getExample());
//        res.setHeader('Content-Type', 'application/json');
//        res.setBody(js);
//        expectedResponse = OASClickMetrics.getExample();
//        response = (OASClickMetrics) api.getMetricsForBitlinkByReferringDomains(params);
//        System.assertEquals(expectedResponse, response);
//    }
//
//    /**
//     * Retrieve Sorted Bitlinks for Group
//     *
//     * Returns a list of Bitlinks sorted by group. The list of custom bitlinks has newest entries first.
//     */
//    @isTest
//    private static void getSortedBitlinksTest() {
//        HttpResponse res = new HttpResponse();
//        res.setStatusCode(200);
//        res.setStatus('OK');
//        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));
//
//        Map<String, Object> params = new Map<String, Object>{
//            'groupGuid' => Ba1bc23dE4F,
//            'r_sort' => clicks,
//            'unit' => month,
//            'units' => 1,
//            'unitReference' => 2006-01-02T15:04:05-0700,
//            'size' => 10
//        };
//
//        OASClient client;
//        OASBitlinksApi api;
//        OASSortedLinks response;
//        OASSortedLinks expectedResponse;
//        String js = '';
//
//        client = new OASClient();
//        api = new OASBitlinksApi(client);
//
//        js = JSON.serialize(OASSortedLinks.getExample());
//        res.setHeader('Content-Type', 'application/json');
//        res.setBody(js);
//        expectedResponse = OASSortedLinks.getExample();
//        response = (OASSortedLinks) api.getSortedBitlinks(params);
//        System.assertEquals(expectedResponse, response);
//    }
//
//    /**
//     * Update a Bitlink
//     *
//     * Updates fields in the specified link. To redirect the link (i.e. to update the Long URL), use PATCH /v4/custom_bitlinks/{custom_bitlink} (https://dev.bitly.com/api-reference/#updateCustomBitlink)
//     */
//    @isTest
//    private static void updateBitlinkTest() {
//        HttpResponse res = new HttpResponse();
//        res.setStatusCode(200);
//        res.setStatus('OK');
//        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));
//
//        Map<String, Object> params = new Map<String, Object>{
//            'bitlink' => bit.ly/12a4b6c,
//            'oaSBitlinkUpdateBody' => ''
//        };
//
//        OASClient client;
//        OASBitlinksApi api;
//        OASBitlinkBody response;
//        OASBitlinkBody expectedResponse;
//        String js = '';
//
//        client = new OASClient();
//        api = new OASBitlinksApi(client);
//
//        js = JSON.serialize(OASBitlinkBody.getExample());
//        res.setHeader('Content-Type', 'application/json');
//        res.setBody(js);
//        expectedResponse = OASBitlinkBody.getExample();
//        response = (OASBitlinkBody) api.updateBitlink(params);
//        System.assertEquals(expectedResponse, response);
//    }
//
//    /**
//     * Update a QR Code
//     *
//     * Updates an existing QR Code
//     */
//    @isTest
//    private static void updateBitlinkQRCodeTest() {
//        HttpResponse res = new HttpResponse();
//        res.setStatusCode(200);
//        res.setStatus('OK');
//        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));
//
//        Map<String, Object> params = new Map<String, Object>{
//            'bitlink' => bit.ly/12a4b6c,
//            'oaSQRCustomizations' => ''
//        };
//
//        OASClient client;
//        OASBitlinksApi api;
//        OASFullQRCode response;
//        OASFullQRCode expectedResponse;
//        String js = '';
//
//        client = new OASClient();
//        api = new OASBitlinksApi(client);
//
//        js = JSON.serialize(OASFullQRCode.getExample());
//        res.setHeader('Content-Type', 'application/json');
//        res.setBody(js);
//        expectedResponse = OASFullQRCode.getExample();
//        response = (OASFullQRCode) api.updateBitlinkQRCode(params);
//        System.assertEquals(expectedResponse, response);
//    }
//
//    /**
//     * Bulk update bitlinks
//     *
//     * Bulk update can add or remove tags or archive up to 100 links at a time; The response includes a list of bitlink ids that were updated.
//     */
//    @isTest
//    private static void updateBitlinksByGroupTest() {
//        HttpResponse res = new HttpResponse();
//        res.setStatusCode(200);
//        res.setStatus('OK');
//        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));
//
//        Map<String, Object> params = new Map<String, Object>{
//            'groupGuid' => Ba1bc23dE4F,
//            'oaSBulkUpdateRequest' => ''
//        };
//
//        OASClient client;
//        OASBitlinksApi api;
//        OASBulkUpdate response;
//        OASBulkUpdate expectedResponse;
//        String js = '';
//
//        client = new OASClient();
//        api = new OASBitlinksApi(client);
//
//        js = JSON.serialize(OASBulkUpdate.getExample());
//        res.setHeader('Content-Type', 'application/json');
//        res.setBody(js);
//        expectedResponse = OASBulkUpdate.getExample();
//        response = (OASBulkUpdate) api.updateBitlinksByGroup(params);
//        System.assertEquals(expectedResponse, response);
//    }
}