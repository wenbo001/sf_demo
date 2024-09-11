/**
 * Created by wenboliu on 05/09/2024.
 */

public interface ICustomMetadataUnitOfWork {

    /**
     * @description Process the given custom metadata record and register a new transaction
     * @param customMetadataRecord the custom metadata record
     * @param relations the custom metadata record relations
     * @return ICustomMetadataUnitOfWork
     */
    ICustomMetadataUnitOfWork register(SObject customMetadataRecord, Map<String, String> relations);

    /**
    * @description Process the given SObject and register a new transaction
    * @param customMetadataRecord the custom metadata record
    * @param namespace the namespace being used
    * @param relations the custom metadata record relations
    * @return ICustomMetadataUnitOfWork
    */
    ICustomMetadataUnitOfWork register(SObject customMetadataRecord, String namespace, Map<String, String> relations);

    /**
     * @description Process the given List of SObject and register new transactions
     * @param  customMetadataRecords the list of CMD records to be registered
     * @return ICustomMetadataUnitOfWork
     **/
    ICustomMetadataUnitOfWork register(List<SObject> customMetadataRecords);

    /**
     * @description Process the given SObject and register a new transaction
     * @param  customMetadataRecord the custom metadata record
     * @return ICustomMetadataUnitOfWork
     */
    ICustomMetadataUnitOfWork register(SObject customMetadataRecord);

    /**
    * @description Process the given SObject and register a new transaction
    * @param  customMetadataRecord the custom metadata record
    * @param  namespace the namespace being used
    * @return ICustomMetadataUnitOfWork
    */
    ICustomMetadataUnitOfWork register(SObject customMetadataRecord, String namespace);

    /**
     * @description Set the callback
     * @param callback the deployment callback class
     * @return ICustomMetadataUnitOfWork
     **/
    ICustomMetadataUnitOfWork setCallback(Metadata.DeployCallback callback);

    /**
     * @description Commit all the registered transactions
     * @return Id of the deployment job
     */
    Id commitWork();



}