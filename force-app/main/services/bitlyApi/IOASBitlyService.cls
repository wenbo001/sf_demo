/**
 * Created by wenboliu on 27/08/2024.
 */

public interface IOASBitlyService {
    OASShortenBitlinkBody getShortenURL (String longURL, String domain, String groupGuid);
    OASFullQRCode createBitlinkQRCode(String bitlyLink, String color, Boolean exclude_bitly_logo, String image_format, String logo_image_guid, Boolean is_hidden);
    OASFullQRCode getBitlinkQRCode (String image_format, String bitlink);
}