/**
 * Created by wenboliu on 27/08/2024.
 */

public inherited sharing class OASBitlyService {
    public static OASShortenBitlinkBody getShortenURL (String longURL, String domain, String groupGuid) {
        return newInstance().getShortenURL (longURL, domain, groupGuid);
    }

    public static OASFullQRCode createBitlinkQRCode(String bitlyLink, String color, Boolean exclude_bitly_logo, String image_format, String logo_image_guid, Boolean is_hidden){
        return newInstance().createBitlinkQRCode (bitlyLink, color, exclude_bitly_logo, image_format, logo_image_guid, is_hidden);
    }

    public static OASFullQRCode getBitlinkQRCode (String image_format, String bitlink){
        return newInstance().getBitlinkQRCode(image_format, bitlink);
    }

    private static IOASBitlyService newInstance() {
        return (IOASBitlyService) Application.Service.newInstance(IOASBitlyService.class);
    }
}