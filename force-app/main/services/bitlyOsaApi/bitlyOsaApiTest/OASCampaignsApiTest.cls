@isTest
private class OASCampaignsApiTest {
    /**
     * Create Campaign
     *
     * Creates a new campaign.
     */
    @isTest
    private static void createCampaignTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(201);
        res.setStatus('Created');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSCampaignModify' => ''
        };

        OASClient client;
        OASCampaignsApi api;
        OASCampaign response;
        OASCampaign expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASCampaignsApi(client);

        js = JSON.serialize(OASCampaign.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCampaign.getExample();
        response = (OASCampaign) api.createCampaign(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Create Channel
     *
     * Creates a new channel.
     */
    @isTest
    private static void createChannelTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSChannelModify' => ''
        };

        OASClient client;
        OASCampaignsApi api;
        OASChannel response;
        OASChannel expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASCampaignsApi(client);

        js = JSON.serialize(OASChannel.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASChannel.getExample();
        response = (OASChannel) api.createChannel(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Retrieve a Campaign
     *
     * Returns details for a campaign.
     */
    @isTest
    private static void getCampaignTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'campaignGuid' => 'Ca1bcd2EFGh'
        };

        OASClient client;
        OASCampaignsApi api;
        OASCampaign response;
        OASCampaign expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASCampaignsApi(client);

        js = JSON.serialize(OASCampaign.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCampaign.getExample();
        response = (OASCampaign) api.getCampaign(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Retrieve Campaigns
     *
     * Returns the campaigns for the current authenticated user.
     */
    @isTest
    private static void getCampaignsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'groupGuid' => 'Ba1bc23dE4F'
        };

        OASClient client;
        OASCampaignsApi api;
        OASCampaigns response;
        OASCampaigns expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASCampaignsApi(client);

        js = JSON.serialize(OASCampaigns.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCampaigns.getExample();
        response = (OASCampaigns) api.getCampaigns(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get a Channel
     *
     * Returns a channel\&#39;s details.
     */
    @isTest
    private static void getChannelTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'channelGuid' => 'Ha1bc2DefGh'
        };

        OASClient client;
        OASCampaignsApi api;
        OASChannel response;
        OASChannel expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASCampaignsApi(client);

        js = JSON.serialize(OASChannel.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASChannel.getExample();
        response = (OASChannel) api.getChannel(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Retrieve Channels
     *
     * Returns the channels available to a user.
     */
    @isTest
    private static void getChannelsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'groupGuid' => 'Ba1bc23dE4F',
            'campaignGuid' => 'Ca1bcd2EFGh'
        };

        OASClient client;
        OASCampaignsApi api;
        OASChannels response;
        OASChannels expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASCampaignsApi(client);

        js = JSON.serialize(OASChannels.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASChannels.getExample();
        response = (OASChannels) api.getChannels(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Update Campaign
     *
     * Updates a campaign\&#39;s details.
     */
    @isTest
    private static void updateCampaignTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'campaignGuid' => 'Ca1bcd2EFGh',
            'oaSCampaignModify' => ''
        };

        OASClient client;
        OASCampaignsApi api;
        OASCampaign response;
        OASCampaign expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASCampaignsApi(client);

        js = JSON.serialize(OASCampaign.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASCampaign.getExample();
        response = (OASCampaign) api.updateCampaign(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Update a Channel
     *
     * Updates an existing channel.
     */
    @isTest
    private static void updateChannelTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'channelGuid' => 'Ha1bc2DefGh',
            'oaSChannelModify' => ''
        };

        OASClient client;
        OASCampaignsApi api;
        OASChannel response;
        OASChannel expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASCampaignsApi(client);

        js = JSON.serialize(OASChannel.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASChannel.getExample();
        response = (OASChannel) api.updateChannel(params);
        System.assertEquals(expectedResponse, response);
    }
}