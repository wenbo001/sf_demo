@isTest
private class OASOrganizationsApiTest {
    /**
     * Retrieve an Organization
     *
     * Retrive details for the specified organization.
     */
    @isTest
    private static void getOrganizationTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organizationGuid' => 'Oa1bcd234eF'
        };

        OASClient client;
        OASOrganizationsApi api;
        OASOrganization response;
        OASOrganization expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASOrganizationsApi(client);

        js = JSON.serialize(OASOrganization.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASOrganization.getExample();
        response = (OASOrganization) api.getOrganization(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get Shorten Counts for an Organization
     *
     * Returns the shorten counts for a specific organization over a specified time period.
     */
    @isTest
    private static void getOrganizationShortenCountsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organizationGuid' => 'Oa1bcd234eF',
            'unit' => 'month',
            'units' => 1,
            'unitReference' => Datetime.valueOf('2006-01-02T15:04:05-0700')
        };

        OASClient client;
        OASOrganizationsApi api;
        OASMetrics response;
        OASMetrics expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASOrganizationsApi(client);

        js = JSON.serialize(OASMetrics.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASMetrics.getExample();
        response = (OASMetrics) api.getOrganizationShortenCounts(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Retrieve Organizations
     *
     * Retrieve a list of organizations.
     */
    @isTest
    private static void getOrganizationsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASOrganizationsApi api;
        OASOrganizations response;
        OASOrganizations expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASOrganizationsApi(client);

        js = JSON.serialize(OASOrganizations.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASOrganizations.getExample();
        response = (OASOrganizations) api.getOrganizations();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get Plan Limits
     *
     * Returns all plan limits and counts available for an organization.
     */
    @isTest
    private static void getPlanLimitsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organizationGuid' => 'Oa1bcd234eF'
        };

        OASClient client;
        OASOrganizationsApi api;
        OASPlanLimits response;
        OASPlanLimits expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASOrganizationsApi(client);

        js = JSON.serialize(OASPlanLimits.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPlanLimits.getExample();
        response = (OASPlanLimits) api.getPlanLimits(params);
        System.assertEquals(expectedResponse, response);
    }
}