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
 * an array of org emails
 */
public class OASOrgEmails {
    /**
     * Get emails
     * @return emails
     */
    public List<OASOrgEmail> emails { get; set; }

    public OASOrgEmails() {
        emails = new List<OASOrgEmail>();
    }

    public static OASOrgEmails getExample() {
        OASOrgEmails orgEmails = new OASOrgEmails();
          orgEmails.emails = new List<OASOrgEmail>{OASOrgEmail.getExample()};
        return orgEmails;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASOrgEmails) {           
            OASOrgEmails orgEmails = (OASOrgEmails) obj;
            return this.emails == orgEmails.emails;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (emails == null ? 0 : System.hashCode(emails));
        return hashCode;
    }
}