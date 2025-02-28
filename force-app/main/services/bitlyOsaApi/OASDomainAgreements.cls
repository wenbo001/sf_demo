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
 * OASDomainAgreements
 */
public class OASDomainAgreements implements OAS.MappedProperties {
    /**
     * Get domainAgreements
     * @return domainAgreements
     */
    public List<OASDomainAgreement> domainAgreements { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'domain_agreements' => 'domainAgreements'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
   }

    public OASDomainAgreements() {
        domainAgreements = new List<OASDomainAgreement>();
    }

    public static OASDomainAgreements getExample() {
        OASDomainAgreements domainAgreements = new OASDomainAgreements();
          domainAgreements.domainAgreements = new List<OASDomainAgreement>{OASDomainAgreement.getExample()};
        return domainAgreements;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASDomainAgreements) {           
            OASDomainAgreements domainAgreements = (OASDomainAgreements) obj;
            return this.domainAgreements == domainAgreements.domainAgreements;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (domainAgreements == null ? 0 : System.hashCode(domainAgreements));
        return hashCode;
    }
}