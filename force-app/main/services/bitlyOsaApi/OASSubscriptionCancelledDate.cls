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
 * OASSubscriptionCancelledDate
 */
public class OASSubscriptionCancelledDate implements OAS.MappedProperties {
    /**
     * ISO timestamp
     * @return subscriptionCancelledDate
     */
    public String subscriptionCancelledDate { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'subscription_cancelled_date' => 'subscriptionCancelledDate'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
   }

    public static OASSubscriptionCancelledDate getExample() {
        OASSubscriptionCancelledDate subscriptionCancelledDate = new OASSubscriptionCancelledDate();
          subscriptionCancelledDate.subscriptionCancelledDate = '';
        return subscriptionCancelledDate;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASSubscriptionCancelledDate) {           
            OASSubscriptionCancelledDate subscriptionCancelledDate = (OASSubscriptionCancelledDate) obj;
            return this.subscriptionCancelledDate == subscriptionCancelledDate.subscriptionCancelledDate;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (subscriptionCancelledDate == null ? 0 : System.hashCode(subscriptionCancelledDate));
        return hashCode;
    }
}