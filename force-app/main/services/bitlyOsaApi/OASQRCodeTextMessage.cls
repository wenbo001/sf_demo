/*
 * Bitly API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 4.0.0
 * 
 *
 * NOTE: This class is auto generated by the OAS code generator program.
 * https://github.com/OpenAPITools/openapi-generator
 * Do not edit the class manually.
 */

/**
 * A preconfigured text message stored in a QR code
 */
public class OASQRCodeTextMessage implements OAS.MappedProperties {
    /**
     * The recipient\'s phone number
     * @return phoneNumber
     */
    public String phoneNumber { get; set; }

    /**
     * A preconfigured text message
     * @return message
     */
    public String message { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'phone_number' => 'phoneNumber'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
   }

    public static OASQRCodeTextMessage getExample() {
        OASQRCodeTextMessage qrCodeTextMessage = new OASQRCodeTextMessage();
          qrCodeTextMessage.phoneNumber = '';
          qrCodeTextMessage.message = '';
        return qrCodeTextMessage;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASQRCodeTextMessage) {           
            OASQRCodeTextMessage qrCodeTextMessage = (OASQRCodeTextMessage) obj;
            return this.phoneNumber == qrCodeTextMessage.phoneNumber
                && this.message == qrCodeTextMessage.message;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (phoneNumber == null ? 0 : System.hashCode(phoneNumber));
        hashCode = (17 * hashCode) + (message == null ? 0 : System.hashCode(message));
        return hashCode;
    }
}