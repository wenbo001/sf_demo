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
 * OASUpdateOverrideRules
 */
public class OASUpdateOverrideRules {
    /**
     * Get rules
     * @return rules
     */
    public String rules { get; set; }

    public static OASUpdateOverrideRules getExample() {
        OASUpdateOverrideRules updateOverrideRules = new OASUpdateOverrideRules();
          updateOverrideRules.rules = '';
        return updateOverrideRules;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASUpdateOverrideRules) {           
            OASUpdateOverrideRules updateOverrideRules = (OASUpdateOverrideRules) obj;
            return this.rules == updateOverrideRules.rules;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (rules == null ? 0 : System.hashCode(rules));
        return hashCode;
    }
}