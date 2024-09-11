/**
 * Created by wenboliu on 27/08/2024.
 */

public class BitlyService {

    //pass URL as paramaetr and same will be passed to Bitly for shorten

    public string shorten(String courseURL){

        //HTTP post call 1- HTTP Object, 2- HTTp Requesr, 3 HTTP response

        Http h = new HTTP();



        HttpRequest req = new HttpRequest();

        req.setMethod('POST');

        req.setEndpoint('callout:Bitly_API/v4/shorten');

        req.setHeader('Authorization', 'Bearer {!$Credential.Password}');

        req.setHeader('Accept','application/json');

        req.setHeader('Content-Type', 'application/json');

        req.setBody(JSON.serialize(new Map<string,Object>{

                'group_guid'=>'Bo8nb7KUMWA',

                'long_url'=> courseURL,

                'domain'=>'bit.ly'

        }));

        System.debug('req::' + req.getHeader('Authorization'));
        System.debug('toEndpoint::'+req.getEndpoint());

        HttpResponse res = h.send(req);

        Map<string,Object> response = (Map<string,Object>)JSON.deserializeUntyped(res.getBody());

        string surl = (string ) response.get('link');

        return surl ;

    }

}