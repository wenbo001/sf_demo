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
 * BAD_REQUEST
 */
public class OASBadRequest extends OASError {
    /**
     * Get message
     * @return message
     */
    public String message { get; set; }

    /**
     * Get description
     * @return description
     */
    public String description { get; set; }

    /**
     * Get resource
     * @return resource
     */
    public String resource { get; set; }

    /**
     * Get errors
     * @return errors
     */
    public List<OASFieldError> errors { get; set; }

    public OASBadRequest() {
        errors = new List<OASFieldError>();
    }

    public static OASBadRequest getExample() {
        OASBadRequest badRequest = new OASBadRequest();
          badRequest.message = '';
          badRequest.description = '';
          badRequest.resource = '';
          badRequest.errors = new List<OASFieldError>{OASFieldError.getExample()};
        return badRequest;
    }

    override public Boolean equals(Object obj) {
        if (obj instanceof OASBadRequest) {           
            OASBadRequest badRequest = (OASBadRequest) obj;
            return this.message == badRequest.message
                && this.description == badRequest.description
                && this.resource == badRequest.resource
                && this.errors == badRequest.errors;
        }
        return false;
    }

    override public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (message == null ? 0 : System.hashCode(message));
        hashCode = (17 * hashCode) + (description == null ? 0 : System.hashCode(description));
        hashCode = (17 * hashCode) + (resource == null ? 0 : System.hashCode(resource));
        hashCode = (17 * hashCode) + (errors == null ? 0 : System.hashCode(errors));
        return hashCode;
    }
}