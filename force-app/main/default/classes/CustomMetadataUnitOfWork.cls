/**
 * Created by wenboliu on 05/09/2024.
 */

public inherited sharing class CustomMetadataUnitOfWork extends MetadataApiUtils.UnitOfWork implements ICustomMetadataUnitOfWork {

    private static final String FULL_NAME_PATTERN = '{0}.{1}';
    private static final String DEVELOPER_NAME_FIELD = 'DeveloperName';
    private static final String LABEL_FIELD = 'MasterLabel';
    private static final String QUALIFIED_API_NAME_FIELD = 'QualifiedApiName';

    @TestVisible
    private class CallBackMock implements Metadata.DeployCallback {

        public void handleResult(Metadata.DeployResult param1, Metadata.DeployCallbackContext param2) {
        }
    }

    public CustomMetadataUnitOfWork(Metadata.DeployCallback callback) {
        setCallback(callback);
    }

    @TestVisible
    private CustomMetadataUnitOfWork() {
        setCallback(new CallBackMock());
    }

    /**
     * @description Process the given SObject and register a new transaction
     * @param customMetadataRecord the custom metadata record
     * @param relations the custom metadata record relations
     * @return UnitOfWork
     **/
    public ICustomMetadataUnitOfWork register(SObject customMetadataRecord, Map<String, String> relations) {
        this.register(customMetadataRecord, '', relations);
        return this;
    }

    /**
    * @description Process the given SObject and register a new transaction
    * @param customMetadataRecord the custom metadata record
    * @param namespace the namespace being used
    * @param relations the custom metadata record relations
    * @return UnitOfWork
    **/
    public ICustomMetadataUnitOfWork register(SObject customMetadataRecord, String namespace, Map<String, String> relations) {
        this.register(recordToMetadataType(customMetadataRecord, namespace, relations));
        return this;
    }

    /**
     * @description Process the given List of SObject and register new transactions
     * @param  customMetadataRecords the list of CMD records to be registered
     * @return UnitOfWork
     **/
    public ICustomMetadataUnitOfWork register(List<SObject> customMetadataRecords) {
        for(SObject customMetadataRecord : customMetadataRecords) {
            this.register(customMetadataRecord);
        }
        return this;
    }

    /**
     * @description Process the given SObject and register a new transaction
     * @param  customMetadataRecord the custom metadata record
     * @return UnitOfWork
     */
    public ICustomMetadataUnitOfWork register(SObject customMetadataRecord) {
        return this.register(customMetadataRecord, '', new Map<String, String>());
    }

    /**
     * @description Process the given SObject and register a new transaction
     * @param  customMetadataRecord the custom metadata record
     * @param  namespace the namespace being used
     * @return UnitOfWork
     */
    public ICustomMetadataUnitOfWork register(SObject customMetadataRecord, String namespace) {
        return this.register(customMetadataRecord, namespace, new Map<String, String>());
    }

    /**
     * @description Set the callback
     * @param callback the deployment callback class
     * @return ICustomMetadataUnitOfWork
     */
    public ICustomMetadataUnitOfWork setCallback(Metadata.DeployCallback callback) {
        super.setDeployCallback(callback);
        return this;
    }

    /**
     * @description
     * @param record The record to convert
     * @param namespace the namespace of the record
     * @param relations The relations to parent records of the record
     * @return Metadata.CustomMetadata
     **/
    @TestVisible
    private Metadata.CustomMetadata recordToMetadataType(SObject record, String namespace, Map<String, String> relations) {
        // Parse Record into Custom Metadata
        Metadata.CustomMetadata customMetadata = new Metadata.CustomMetadata();
        String customMetadataTypeQualifiedApiName = (String) record.getSObjectType().getDescribe().getName(),
                customMetadataRecordQualifiedApiName = record.get(QUALIFIED_API_NAME_FIELD) != null
                        ? (String)record.get(QUALIFIED_API_NAME_FIELD)
                        : (String)record.get(DEVELOPER_NAME_FIELD),
                customMetadataRecordLabel = (String) record.get(LABEL_FIELD);

        customMetadata.fullName = String.format(
                FULL_NAME_PATTERN,
                new List<String>{ customMetadataTypeQualifiedApiName, customMetadataRecordQualifiedApiName });

        customMetadata.label = customMetadataRecordLabel;

        // Iterate Over the Custom Fields and Assign
        for (Schema.SObjectField field : getCustomFields(record)) {
            Metadata.CustomMetadataValue customValue = new Metadata.CustomMetadataValue();
            customValue.field = field.getDescribe().getName();
            customValue.value = record.get(field.getDescribe().getName());
            customMetadata.values.add(customValue);
        }

        // Populate Relations | Metadata Relations are inserted using Developer Name and not ID
        for (String field : relations.keySet()) {
            Metadata.CustomMetadataValue customValue = new Metadata.CustomMetadataValue();
            customValue.field = field;
            customValue.value = relations.get(field);
            customMetadata.values.add(customValue);
        }

        return customMetadata;
    }

    /**
     * @description Returns the list of custom field definitions for a given record
     * @param  record the record to be described
     * @return List<Schema.SObjectField>
     **/
    @TestVisible
    private List<Schema.SObjectField> getCustomFields(SObject record) {
        List<Schema.SObjectField> customFields = new List<Schema.SObjectField>();
        Map<String, Schema.SObjectField> fields = record.getSObjectType().getDescribe().fields.getMap();
        for (String fieldName : fields.keySet()) {
            Schema.SObjectField field = fields.get(fieldName);
            if (field.getDescribe().isCustom() && !field.getDescribe().getType().equals(Schema.DisplayType.REFERENCE)) {
                customFields.add(field);
            }
        }
        return customFields;
    }

}