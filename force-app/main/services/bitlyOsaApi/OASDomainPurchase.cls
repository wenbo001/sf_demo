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
 * OASDomainPurchase
 */
public class OASDomainPurchase implements OAS.MappedProperties {
    /**
     * Get domain
     * @return domain
     */
    public String domain { get; set; }

    /**
     * Get orderId
     * @return orderId
     */
    public Integer orderId { get; set; }

    /**
     * Get vendor
     * @return vendor
     */
    public String vendor { get; set; }

    /**
     * Get orgGuid
     * @return orgGuid
     */
    public String orgGuid { get; set; }

    /**
     * ISO timestamp
     * @return created
     */
    public String created { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'order_id' => 'orderId',
        'org_guid' => 'orgGuid'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
   }


    public static OASDomainPurchase getExample() {
        OASDomainPurchase domainPurchase = new OASDomainPurchase();
          domainPurchase.domain = '';
          domainPurchase.orderId = 0;
          domainPurchase.vendor = '';
          domainPurchase.orgGuid = '';
          domainPurchase.created = '';
        return domainPurchase;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASDomainPurchase) {           
            OASDomainPurchase domainPurchase = (OASDomainPurchase) obj;
            return this.domain == domainPurchase.domain
                && this.orderId == domainPurchase.orderId
                && this.vendor == domainPurchase.vendor
                && this.orgGuid == domainPurchase.orgGuid
                && this.created == domainPurchase.created;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (domain == null ? 0 : System.hashCode(domain));
        hashCode = (17 * hashCode) + (orderId == null ? 0 : System.hashCode(orderId));
        hashCode = (17 * hashCode) + (vendor == null ? 0 : System.hashCode(vendor));
        hashCode = (17 * hashCode) + (orgGuid == null ? 0 : System.hashCode(orgGuid));
        hashCode = (17 * hashCode) + (created == null ? 0 : System.hashCode(created));
        return hashCode;
    }
}