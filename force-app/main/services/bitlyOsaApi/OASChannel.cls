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
 * OASChannel
 */
public class OASChannel implements OAS.MappedProperties {
    /**
     * Get name
     * @return name
     */
    public String name { get; set; }

    /**
     * Get guid
     * @return guid
     */
    public String guid { get; set; }

    /**
     * ISO TIMESTAMP
     * @return created
     */
    public String created { get; set; }

    /**
     * ISO_TIMESTAMP
     * @return modified
     */
    public String modified { get; set; }

    /**
     * Get groupGuid
     * @return groupGuid
     */
    public String groupGuid { get; set; }

    /**
     * Get references
     * @return references
     */
    public Map<String, String> references { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'group_guid' => 'groupGuid'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
   }

    public OASChannel() {
        references = new Map<String, String>();
    }

    public static OASChannel getExample() {
        OASChannel channel = new OASChannel();
          channel.name = '';
          channel.guid = '';
          channel.created = '';
          channel.modified = '';
          channel.groupGuid = '';
          channel.references = new Map<String, String>{'key'=>''};
        return channel;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASChannel) {           
            OASChannel channel = (OASChannel) obj;
            return this.name == channel.name
                && this.guid == channel.guid
                && this.created == channel.created
                && this.modified == channel.modified
                && this.groupGuid == channel.groupGuid
                && this.references == channel.references;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (name == null ? 0 : System.hashCode(name));
        hashCode = (17 * hashCode) + (guid == null ? 0 : System.hashCode(guid));
        hashCode = (17 * hashCode) + (created == null ? 0 : System.hashCode(created));
        hashCode = (17 * hashCode) + (modified == null ? 0 : System.hashCode(modified));
        hashCode = (17 * hashCode) + (groupGuid == null ? 0 : System.hashCode(groupGuid));
        hashCode = (17 * hashCode) + (references == null ? 0 : System.hashCode(references));
        return hashCode;
    }
}