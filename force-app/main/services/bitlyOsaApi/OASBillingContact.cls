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
 * OASBillingContact
 */
public class OASBillingContact implements OAS.MappedProperties {
    /**
     * Get billingContactId
     * @return billingContactId
     */
    public String billingContactId { get; set; }

    /**
     * Get firstName
     * @return firstName
     */
    public String firstName { get; set; }

    /**
     * Get lastName
     * @return lastName
     */
    public String lastName { get; set; }

    /**
     * Get phone
     * @return phone
     */
    public String phone { get; set; }

    /**
     * Get email
     * @return email
     */
    public String email { get; set; }

    /**
     * Get description
     * @return description
     */
    public String description { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'billing_contact_id' => 'billingContactId',
        'first_name' => 'firstName',
        'last_name' => 'lastName'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
   }

//    private static final Map<String, String> propertyMappings = new Map<String, String>{
//        'billing_contact_id' => 'billingContactId',
//        'first_name' => 'firstName',
//        'last_name' => 'lastName'
//    };

    //public Map<String, String> getPropertyMappings() {
        //return propertyMappings;
   //}

//    private static final Map<String, String> propertyMappings = new Map<String, String>{
//        'billing_contact_id' => 'billingContactId',
//        'first_name' => 'firstName',
//        'last_name' => 'lastName'
//    };

    //public Map<String, String> getPropertyMappings() {
        //return propertyMappings;
   //}

    public static OASBillingContact getExample() {
        OASBillingContact billingContact = new OASBillingContact();
          billingContact.billingContactId = '';
          billingContact.firstName = '';
          billingContact.lastName = '';
          billingContact.phone = '';
          billingContact.email = '';
          billingContact.description = '';
        return billingContact;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASBillingContact) {           
            OASBillingContact billingContact = (OASBillingContact) obj;
            return this.billingContactId == billingContact.billingContactId
                && this.firstName == billingContact.firstName
                && this.lastName == billingContact.lastName
                && this.phone == billingContact.phone
                && this.email == billingContact.email
                && this.description == billingContact.description;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (billingContactId == null ? 0 : System.hashCode(billingContactId));
        hashCode = (17 * hashCode) + (firstName == null ? 0 : System.hashCode(firstName));
        hashCode = (17 * hashCode) + (lastName == null ? 0 : System.hashCode(lastName));
        hashCode = (17 * hashCode) + (phone == null ? 0 : System.hashCode(phone));
        hashCode = (17 * hashCode) + (email == null ? 0 : System.hashCode(email));
        hashCode = (17 * hashCode) + (description == null ? 0 : System.hashCode(description));
        return hashCode;
    }
}