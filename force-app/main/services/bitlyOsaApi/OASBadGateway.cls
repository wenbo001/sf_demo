public class OASBadGateway extends OASError {
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

    public OASBadGateway() {
        errors = new List<OASFieldError>();
    }

    public static OASBadGateway getExample() {
        OASBadGateway badGateway = new OASBadGateway();
        badGateway.message = '';
        badGateway.description = '';
        badGateway.resource = '';
        badGateway.errors = new List<OASFieldError>{OASFieldError.getExample()};
        return badGateway;
    }

    override public Boolean equals(Object obj) {
        if (obj instanceof OASBadGateway) {
            OASBadGateway badGateway = (OASBadGateway) obj;
            return this.message == badGateway.message
                    && this.description == badGateway.description
                    && this.resource == badGateway.resource
                    && this.errors == badGateway.errors;
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

    // Add interface methods implementations
    public String getMessage() {
        return message;
    }

    public String getDescription() {
        return description;
    }

    public String getResource() {
        return resource;
    }

    public List<OASFieldError> getErrors() {
        return errors;
    }
}