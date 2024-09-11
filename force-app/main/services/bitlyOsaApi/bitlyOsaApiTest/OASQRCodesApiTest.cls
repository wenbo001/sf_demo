@isTest
private class OASQRCodesApiTest {
    /**
     * Create a QR Code
     *
     * Create a new QR Code and return its metadata
     */
    @isTest
    private static void createQRCodePublicTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSPublicCreateQRCodeRequest' => ''
        };

        OASClient client;
        OASQRCodesApi api;
        OASQRCodeMinimal response;
        OASQRCodeMinimal expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASQRCodesApi(client);

        js = JSON.serialize(OASQRCodeMinimal.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQRCodeMinimal.getExample();
        response = (OASQRCodeMinimal) api.createQRCodePublic(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Retrieve a QR Code
     *
     * Gets the QR code with a matching id.
     */
    @isTest
    private static void getQRCodeByIdPublicTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'qrcodeId' => 'Qabcde12345'
        };

        OASClient client;
        OASQRCodesApi api;
        OASQRCodeDetails response;
        OASQRCodeDetails expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASQRCodesApi(client);

        js = JSON.serialize(OASQRCodeDetails.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQRCodeDetails.getExample();
        response = (OASQRCodeDetails) api.getQRCodeByIdPublic(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Retrieve a QR Code image
     *
     * Get an image of a given QR code with a matching id and a format based on the Accept header.\nIf a base64 encoded value inside of JSON is preferred send Accept: application/json.\nIn addition to Accept: application/json the image format can be specified using the query parameter \&#39;format\&#39;.\nIf no format is specified anywhere the default will be SVG.\n
     */
    @isTest
    private static void getQRCodeImagePublicTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'qrcodeId' => 'Qabcde12345',
            'accept' => 'image/svg+xml',
            'format' => 'svg'
        };

        OASClient client;
        OASQRCodesApi api;
        OASPublicQRCodeImageResponse response;
        OASPublicQRCodeImageResponse expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASQRCodesApi(client);

        js = JSON.serialize(OASPublicQRCodeImageResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPublicQRCodeImageResponse.getExample();
        response = (OASPublicQRCodeImageResponse) api.getQRCodeImagePublic(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASPublicQRCodeImageResponse.getExample());
        res.setHeader('Content-Type', 'image/svg+xml');
        res.setBody(js);
        expectedResponse = OASPublicQRCodeImageResponse.getExample();
        response = (OASPublicQRCodeImageResponse) api.getQRCodeImagePublic(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get Scans for a QR Code
     *
     * Returns an array of scan counts for the specified QR code. The array is comprised of scan counts for each time window, where the window is based on the provided unit.
     */
    @isTest
    private static void getScanMetricsForQRCodeTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'qrcodeId' => 'Qabcde12345',
            'unit' => 'month',
            'units' => 1,
            'unitReference' => Datetime.valueOf('2006-01-02T15:04:05-0700')
        };

        OASClient client;
        OASQRCodesApi api;
        OASBitlinkScans response;
        OASBitlinkScans expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASQRCodesApi(client);

        js = JSON.serialize(OASBitlinkScans.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASBitlinkScans.getExample();
        response = (OASBitlinkScans) api.getScanMetricsForQRCode(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get Scans for a QR Code by Browser
     *
     * Returns the browsers generating scan traffic to the specified QR Code.
     */
    @isTest
    private static void getScanMetricsForQRCodeByBrowserTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'qrcodeId' => 'Qabcde12345',
            'unit' => 'month',
            'units' => 1,
            'size' => 10,
            'unitReference' => Datetime.valueOf('2006-01-02T15:04:05-0700')
        };

        OASClient client;
        OASQRCodesApi api;
        OASScanMetrics response;
        OASScanMetrics expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASQRCodesApi(client);

        js = JSON.serialize(OASScanMetrics.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASScanMetrics.getExample();
        response = (OASScanMetrics) api.getScanMetricsForQRCodeByBrowser(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASScanMetrics.getExample());
        res.setHeader('Content-Type', 'text/csv');
        res.setBody(js);
        expectedResponse = OASScanMetrics.getExample();
        response = (OASScanMetrics) api.getScanMetricsForQRCodeByBrowser(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get Metrics for a QR Code by City
     *
     * Returns the city origins of scan traffic for the specified QR Code.
     */
    @isTest
    private static void getScanMetricsForQRCodeByCitiesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'qrcodeId' => 'Qabcde12345',
            'unit' => 'month',
            'units' => 1,
            'size' => 10,
            'unitReference' => Datetime.valueOf('2006-01-02T15:04:05-0700')
        };

        OASClient client;
        OASQRCodesApi api;
        OASCityScanMetrics response;
        OASCityScanMetrics expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASQRCodesApi(client);

        js = JSON.serialize(OASCityScanMetrics.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCityScanMetrics.getExample();
        response = (OASCityScanMetrics) api.getScanMetricsForQRCodeByCities(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASCityScanMetrics.getExample());
        res.setHeader('Content-Type', 'text/csv');
        res.setBody(js);
        expectedResponse = OASCityScanMetrics.getExample();
        response = (OASCityScanMetrics) api.getScanMetricsForQRCodeByCities(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get Scans for a QR Code by Country
     *
     * Returns the country origins of scan traffic for the specified QR Code.
     */
    @isTest
    private static void getScanMetricsForQRCodeByCountriesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'qrcodeId' => 'Qabcde12345',
            'unit' => 'month',
            'units' => 1,
            'size' => 10,
            'unitReference' => Datetime.valueOf('2006-01-02T15:04:05-0700')
        };

        OASClient client;
        OASQRCodesApi api;
        OASScanMetrics response;
        OASScanMetrics expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASQRCodesApi(client);

        js = JSON.serialize(OASScanMetrics.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASScanMetrics.getExample();
        response = (OASScanMetrics) api.getScanMetricsForQRCodeByCountries(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASScanMetrics.getExample());
        res.setHeader('Content-Type', 'text/csv');
        res.setBody(js);
        expectedResponse = OASScanMetrics.getExample();
        response = (OASScanMetrics) api.getScanMetricsForQRCodeByCountries(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get Scans for a QR Code by Device OS
     *
     * Returns the device os generating scan traffic for the specified QR Code.
     */
    @isTest
    private static void getScanMetricsForQRCodeByDevicesOSTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'qrcodeId' => 'Qabcde12345',
            'unit' => 'month',
            'units' => 1,
            'size' => 10,
            'unitReference' => Datetime.valueOf('2006-01-02T15:04:05-0700')
        };

        OASClient client;
        OASQRCodesApi api;
        OASScanMetrics response;
        OASScanMetrics expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASQRCodesApi(client);

        js = JSON.serialize(OASScanMetrics.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASScanMetrics.getExample();
        response = (OASScanMetrics) api.getScanMetricsForQRCodeByDevicesOS(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASScanMetrics.getExample());
        res.setHeader('Content-Type', 'text/csv');
        res.setBody(js);
        expectedResponse = OASScanMetrics.getExample();
        response = (OASScanMetrics) api.getScanMetricsForQRCodeByDevicesOS(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get Scans Summary for a QR Code
     *
     * Returns the scan counts for a QR Code rolled up into a single field for a specified time window, where the window is based on the provided unit.
     */
    @isTest
    private static void getScanMetricsSummaryForQRCodeTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'qrcodeId' => 'Qabcde12345',
            'unit' => 'month',
            'units' => 1,
            'unitReference' => Datetime.valueOf('2006-01-02T15:04:05-0700')
        };

        OASClient client;
        OASQRCodesApi api;
        OASBitlinkScansSummary response;
        OASBitlinkScansSummary expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASQRCodesApi(client);

        js = JSON.serialize(OASBitlinkScansSummary.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASBitlinkScansSummary.getExample();
        response = (OASBitlinkScansSummary) api.getScanMetricsSummaryForQRCode(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Retrieve QR Codes by Group
     *
     * Retrieves a list of QR codes matching the filter settings. Values are in reverse chronological order.\nThe pagination occurs by calling the next link in the pagination response object.\n
     */
    @isTest
    private static void listQRMinimalTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'hasRenderCustomizations' => 'both',
            'archived' => 'both',
            'size' => 10,
            'searchAfter' => 'null'
        };

        OASClient client;
        OASQRCodesApi api;
        OASQRCodesMinimal response;
        OASQRCodesMinimal expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASQRCodesApi(client);

        js = JSON.serialize(OASQRCodesMinimal.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQRCodesMinimal.getExample();
        response = (OASQRCodesMinimal) api.listQRMinimal(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Update a QR Code
     *
     * Updates the QR code with a matching id and returns it.
     */
    @isTest
    private static void updateQRCodePublicTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'qrcodeId' => 'Qabc123',
            'oaSPublicUpdateQRCodeRequest' => ''
        };

        OASClient client;
        OASQRCodesApi api;
        OASQRCodeMinimal response;
        OASQRCodeMinimal expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASQRCodesApi(client);

        js = JSON.serialize(OASQRCodeMinimal.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQRCodeMinimal.getExample();
        response = (OASQRCodeMinimal) api.updateQRCodePublic(params);
        System.assertEquals(expectedResponse, response);
    }
}