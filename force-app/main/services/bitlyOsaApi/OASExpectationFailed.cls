/**
 * EXPECTATION_FAILED
 */
public class OASExpectationFailed extends OASError {
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

    public OASExpectationFailed() {
        errors = new List<OASFieldError>();
    }

    public static OASExpectationFailed getExample() {
        OASExpectationFailed expectationFailed = new OASExpectationFailed();
        expectationFailed.message = 'Sample message';  // Provide a meaningful example
        expectationFailed.description = 'Sample description';  // Provide a meaningful example
        expectationFailed.resource = 'Sample resource';  // Provide a meaningful example
        expectationFailed.errors = new List<OASFieldError>{OASFieldError.getExample()};
        return expectationFailed;
    }

    override public Boolean equals(Object obj) {
        if (obj instanceof OASExpectationFailed) {
            OASExpectationFailed expectationFailed = (OASExpectationFailed) obj;
            return this.message == expectationFailed.message
                    && this.description == expectationFailed.description
                    && this.resource == expectationFailed.resource
                    && this.errors != null ? this.errors.equals(expectationFailed.errors) : expectationFailed.errors == null;
        }
        return false;
    }

   override public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (message == null ? 0 : System.hashCode(message));
        hashCode = (17 * hashCode) + (description == null ? 0 : System.hashCode(description));
        hashCode = (17 * hashCode) + (resource == null ? 0 : System.hashCode(resource));
        hashCode = (17 * hashCode) + (errors == null ? 0 : errors.hashCode());
        return hashCode;
    }
}