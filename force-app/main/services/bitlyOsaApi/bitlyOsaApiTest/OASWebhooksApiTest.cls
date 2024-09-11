@isTest
private class OASWebhooksApiTest {
    /**
     * Create Webhook
     *
     * Creates a webhook.
     */
    @isTest
    private static void createWebhookTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(201);
        res.setStatus('Created');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSWebhookCreate' => ''
        };

        OASClient client;
        OASWebhooksApi api;
        OASWebhook response;
        OASWebhook expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASWebhooksApi(client);

        js = JSON.serialize(OASWebhook.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASWebhook.getExample();
        response = (OASWebhook) api.createWebhook(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Delete Webhook
     *
     * Deletes a webhook.
     */
    @isTest
    private static void deleteWebhookTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'webhookGuid' => 'Wa1bcDefG23'
        };

        OASClient client;
        OASWebhooksApi api;
        String js = '';

        client = new OASClient();
        api = new OASWebhooksApi(client);
        api.deleteWebhook(params);
    }

    /**
     * Retrieve Webhook
     *
     * Returns a webhook.
     */
    @isTest
    private static void getWebhookTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'webhookGuid' => 'Wa1bcDefG23'
        };

        OASClient client;
        OASWebhooksApi api;
        OASWebhook response;
        OASWebhook expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASWebhooksApi(client);

        js = JSON.serialize(OASWebhook.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASWebhook.getExample();
        response = (OASWebhook) api.getWebhook(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get Webhooks
     *
     * Fetch all webhooks available for an Organization
     */
    @isTest
    private static void getWebhooksTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organizationGuid' => 'Oa1bcd234eF'
        };

        OASClient client;
        OASWebhooksApi api;
        OASWebhooks response;
        OASWebhooks expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASWebhooksApi(client);

        js = JSON.serialize(OASWebhooks.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASWebhooks.getExample();
        response = (OASWebhooks) api.getWebhooks(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Update Webhook
     *
     * Update a webhook
     */
    @isTest
    private static void updateWebhookTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'webhookGuid' => 'Wa1bcDefG23',
            'oaSWebhookUpdate' => ''
        };

        OASClient client;
        OASWebhooksApi api;
        OASWebhook response;
        OASWebhook expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASWebhooksApi(client);

        js = JSON.serialize(OASWebhook.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASWebhook.getExample();
        response = (OASWebhook) api.updateWebhook(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Verify Webhook
     *
     * Sends ping event to test webhook configuration.
     */
    @isTest
    private static void verifyWebhookTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'webhookGuid' => 'Wa1bcDefG23'
        };

        OASClient client;
        OASWebhooksApi api;
        OASWebhook response;
        OASWebhook expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASWebhooksApi(client);

        js = JSON.serialize(OASWebhook.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASWebhook.getExample();
        response = (OASWebhook) api.verifyWebhook(params);
        System.assertEquals(expectedResponse, response);
    }
}