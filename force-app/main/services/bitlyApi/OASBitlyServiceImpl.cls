/**
 * Created by wenboliu on 27/08/2024.
 */

public inherited sharing class OASBitlyServiceImpl implements IOASBitlyService{
    public OASShortenBitlinkBody getShortenURL(String longURL, String domain, String groupGuid) {

        OASShorten oaSShorten = new OASShorten();
        oaSShorten.setLongUrl(longURL);
        oaSShorten.domain = domain;
        oaSShorten.setGroupGuid(groupGuid);
        Map<String, Object> params = new Map<String, Object>();
        params.put('oaSShorten', oaSShorten);

        return new OASBitlinksApi().createBitlink(params);
    }

    public OASFullQRCode createBitlinkQRCode(String bitlyLink, String color, Boolean exclude_bitly_logo, String image_format, String logo_image_guid, Boolean is_hidden){
        OASQRCustomizations qrCustomizations = new OASQRCustomizations();
        qrCustomizations.color = color;
        qrCustomizations.exclude_bitly_logo = exclude_bitly_logo;
        qrCustomizations.image_format = OASQRCustomizations.ImageFormatEnum.PNG;
        qrCustomizations.logo_image_guid = logo_image_guid;
        qrCustomizations.is_hidden = is_hidden;
        Map<String, Object> params = new Map<String, Object>();
        params.put('oaSQRCustomizations', qrCustomizations);
        params.put('bitlink', bitlyLink);
        return new OASBitlinksApi().createBitlinkQRCode(params);
    }

    public OASFullQRCode getBitlinkQRCode (String image_format, String bitlink) {
        Map<String, Object> params = new Map<String, Object>();
        params.put('imageFormat', image_format);
        params.put('bitlink', bitlink);
        return  new OASBitlinksApi().getBitlinkQRCode(params);
    }



}