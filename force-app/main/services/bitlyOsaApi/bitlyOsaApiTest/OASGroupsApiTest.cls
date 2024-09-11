@isTest
private class OASGroupsApiTest {
    /**
     * Retrieve a Group
     *
     * Returns details for a group.
     */
    @isTest
    private static void getGroupTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'groupGuid' => 'Ba1bc23dE4F'
        };

        OASClient client;
        OASGroupsApi api;
        OASGroup response;
        OASGroup expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASGroupsApi(client);

        js = JSON.serialize(OASGroup.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGroup.getExample();
        response = (OASGroup) api.getGroup(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get clicks by group
     *
     * get number of clicks on bitlinks in a group
     */
    @isTest
    private static void getGroupClicksTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'groupGuid' => 'Ba1bc23dE4F',
            'unit' => 'month',
            'units' => 1,
            'unitReference' => Datetime.valueOf('2006-01-02T15:04:05-0700')
        };

        OASClient client;
        OASGroupsApi api;
        OASGroupClicks response;
        OASGroupClicks expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASGroupsApi(client);

        js = JSON.serialize(OASGroupClicks.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGroupClicks.getExample();
        response = (OASGroupClicks) api.getGroupClicks(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get Click Metrics for a Group by City
     *
     * Returns the geographic origins of click traffic by city for the specified group.
     */
    @isTest
    private static void getGroupMetricsByCitiesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'groupGuid' => 'Ba1bc23dE4F',
            'unit' => 'month',
            'units' => 1,
            'size' => 10,
            'unitReference' => DateTime.valueOf('2006-01-02T15:04:05-0700')
        };

        OASClient client;
        OASGroupsApi api;
        OASCityMetrics response;
        OASCityMetrics expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASGroupsApi(client);

        js = JSON.serialize(OASCityMetrics.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCityMetrics.getExample();
        response = (OASCityMetrics) api.getGroupMetricsByCities(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCityMetrics.getExample());
        res.setHeader('Content-Type', 'text/csv');
        res.setBody(js);
        expectedResponse = OASCityMetrics.getExample();
        response = (OASCityMetrics) api.getGroupMetricsByCities(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get Click Metrics for a Group by Country
     *
     * Returns the geographic origins of click traffic by country for the specified group.
     */
    @isTest
    private static void getGroupMetricsByCountriesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'groupGuid' => 'Ba1bc23dE4F',
            'unit' => 'month',
            'units' => 1,
            'size' => 10,
            'unitReference' => DateTime.valueOf('2006-01-02T15:04:05-0700')
        };

        OASClient client;
        OASGroupsApi api;
        OASClickMetrics response;
        OASClickMetrics expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASGroupsApi(client);

        js = JSON.serialize(OASClickMetrics.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASClickMetrics.getExample();
        response = (OASClickMetrics) api.getGroupMetricsByCountries(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASClickMetrics.getExample());
        res.setHeader('Content-Type', 'text/csv');
        res.setBody(js);
        expectedResponse = OASClickMetrics.getExample();
        response = (OASClickMetrics) api.getGroupMetricsByCountries(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get Click Metrics for a Group by Device Type
     *
     * Returns the device types generating click traffic to the specified group\&#39;s links.
     */
    @isTest
    private static void getGroupMetricsByDevicesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'groupGuid' => 'Ba1bc23dE4F',
            'unit' => 'month',
            'units' => 1,
            'size' => 10,
            'unitReference' => DateTime.valueOf('2006-01-02T15:04:05-0700')
        };

        OASClient client;
        OASGroupsApi api;
        OASDeviceMetrics response;
        OASDeviceMetrics expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASGroupsApi(client);

        js = JSON.serialize(OASDeviceMetrics.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDeviceMetrics.getExample();
        response = (OASDeviceMetrics) api.getGroupMetricsByDevices(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASDeviceMetrics.getExample());
        res.setHeader('Content-Type', 'text/csv');
        res.setBody(js);
        expectedResponse = OASDeviceMetrics.getExample();
        response = (OASDeviceMetrics) api.getGroupMetricsByDevices(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get Click Metrics for a Group by Referrer
     *
     * Returns metrics by referrer for the specified group\&#39;s links.
     */
    @isTest
    private static void getGroupMetricsByReferrerTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'groupGuid' => 'Ba1bc23dE4F',
            'unit' => 'month',
            'units' => 1,
            'size' => 10,
            'unitReference' => Datetime.valueOf('2006-01-02T15:04:05-0700')
        };

        OASClient client;
        OASGroupsApi api;
        OASClickMetrics response;
        OASClickMetrics expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASGroupsApi(client);

        js = JSON.serialize(OASClickMetrics.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASClickMetrics.getExample();
        response = (OASClickMetrics) api.getGroupMetricsByReferrer(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASClickMetrics.getExample());
        res.setHeader('Content-Type', 'text/csv');
        res.setBody(js);
        expectedResponse = OASClickMetrics.getExample();
        response = (OASClickMetrics) api.getGroupMetricsByReferrer(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get Click Metrics for a Group by Referring Networks
     *
     * Returns metrics by referring networks for the specified group\&#39;s links.
     */
    @isTest
    private static void getGroupMetricsByReferringNetworksTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'groupGuid' => 'Ba1bc23dE4F',
            'unit' => 'month',
            'units' => 1,
            'size' => 10,
            'unitReference' => DateTime.valueOf('2006-01-02T15:04:05-0700')
        };

        OASClient client;
        OASGroupsApi api;
        OASClickMetrics response;
        OASClickMetrics expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASGroupsApi(client);

        js = JSON.serialize(OASClickMetrics.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASClickMetrics.getExample();
        response = (OASClickMetrics) api.getGroupMetricsByReferringNetworks(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Retrieve Group Preferences
     *
     * Returns preferences for the specified group.
     */
    @isTest
    private static void getGroupPreferencesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'groupGuid' => 'Ba1bc23dE4F'
        };

        OASClient client;
        OASGroupsApi api;
        OASGroupPreferences response;
        OASGroupPreferences expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASGroupsApi(client);

        js = JSON.serialize(OASGroupPreferences.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGroupPreferences.getExample();
        response = (OASGroupPreferences) api.getGroupPreferences(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Retrieve Group Shorten Counts
     *
     * Returns all the shorten counts for a group.
     */
    @isTest
    private static void getGroupShortenCountsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'groupGuid' => 'Ba1bc23dE4F',
            'unit' => 'month',
            'units' => 1,
            'unitReference' => DateTime.valueOf('2006-01-02T15:04:05-0700')
        };

        OASClient client;
        OASGroupsApi api;
        OASMetrics response;
        OASMetrics expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASGroupsApi(client);

        js = JSON.serialize(OASMetrics.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASMetrics.getExample();
        response = (OASMetrics) api.getGroupShortenCounts(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Retrieve Tags by Group
     *
     * Returns the tags currently used in the specified group. Maximum 1000.
     */
    @isTest
    private static void getGroupTagsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'groupGuid' => 'Ba1bc23dE4F'
        };

        OASClient client;
        OASGroupsApi api;
        OASTags response;
        OASTags expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASGroupsApi(client);

        js = JSON.serialize(OASTags.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASTags.getExample();
        response = (OASTags) api.getGroupTags(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Retrieve Groups
     *
     * Returns a list of groups in the organization.
     */
    @isTest
    private static void getGroupsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organizationGuid' => 'Oa1bcd234eF'
        };

        OASClient client;
        OASGroupsApi api;
        OASGroups response;
        OASGroups expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASGroupsApi(client);

        js = JSON.serialize(OASGroups.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGroups.getExample();
        response = (OASGroups) api.getGroups(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Retrieve QR Code Logo Images
     *
     * Retrieves logo images associated with QR codes by group
     */
    @isTest
    private static void getQRLogoImagesByGroupTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'groupGuid' => 'Ba1bc23dE4F'
        };

        OASClient client;
        OASGroupsApi api;
        OASQRLogoImagesResponse response;
        OASQRLogoImagesResponse expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASGroupsApi(client);

        js = JSON.serialize(OASQRLogoImagesResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQRLogoImagesResponse.getExample();
        response = (OASQRLogoImagesResponse) api.getQRLogoImagesByGroup(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Update a Group
     *
     * Updates the details of a group.
     */
    @isTest
    private static void updateGroupTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'groupGuid' => 'Ba1bc23dE4F',
            'oaSGroupUpdate' => ''
        };

        OASClient client;
        OASGroupsApi api;
        OASGroup response;
        OASGroup expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASGroupsApi(client);

        js = JSON.serialize(OASGroup.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGroup.getExample();
        response = (OASGroup) api.updateGroup(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Update Group Preferences
     *
     * Updates preferences for a group.
     */
    @isTest
    private static void updateGroupPreferencesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'groupGuid' => 'Ba1bc23dE4F',
            'oaSGroupPreferences' => ''
        };

        OASClient client;
        OASGroupsApi api;
        OASGroupPreferences response;
        OASGroupPreferences expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASGroupsApi(client);

        js = JSON.serialize(OASGroupPreferences.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGroupPreferences.getExample();
        response = (OASGroupPreferences) api.updateGroupPreferences(params);
        System.assertEquals(expectedResponse, response);
    }
}