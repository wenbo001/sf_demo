/**
 * Created by wenboliu on 05/09/2024.
 */

public inherited sharing class MetadataApiUtils {
    /**
     * Custom Unit of Work for Custom Metadata Type Transactions
     */

    public virtual class UnitOfWork {
        @TestVisible
        private Metadata.DeployContainer container;
        @TestVisible
        private Metadata.DeployCallback callback;

        public UnitOfWork() {
            this.container = new Metadata.DeployContainer();
            this.callback = new DefaultCallback();
        }

        /**
         * @description Register a new transaction
         * @param customMetadata the custom metadata to be registered
         * @return UnitOfWork
         **/
        public UnitOfWork register(Metadata.CustomMetadata customMetadata) {
            this.container.addMetadata(customMetadata);
            return this;
        }

        /**
         * @description Set the callback
         * @param callback the deployment callback class
         * @return UnitOfWork
         **/
        public UnitOfWork setDeployCallback(Metadata.DeployCallback callback) {
            this.callback = callback;
            return this;
        }

        /**
         * @description Commit all the registered transactions
         * @return Id of the deployment job
         **/
        public Id commitWork() {
            Id jobId;
            if(!Test.isRunningTest()) {
                jobId = Metadata.Operations.enqueueDeployment(this.container, this.callback);
            }
            return jobId;
        }
    }

    /**
     * Default Callback is necessary in case no callback has been set
     */
    public class DefaultCallback implements Metadata.DeployCallback {
        /**
         * @description Handles the result of the metadata deployment
         * @param result the deployment result
         * @param context the deployment context
         **/
        public void handleResult(Metadata.DeployResult result, Metadata.DeployCallbackContext context) {}
    }
}