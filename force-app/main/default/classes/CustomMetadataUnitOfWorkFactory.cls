/**
 * Created by wenboliu on 05/09/2024.
 */

public inherited sharing virtual class CustomMetadataUnitOfWorkFactory {

    private ICustomMetadataUnitOfWork mock;

    public void setMock(ICustomMetadataUnitOfWork mock) {
        this.mock = mock;
    }

    public ICustomMetadataUnitOfWork newInstance(Metadata.DeployCallback callback) {
        if (mock != null) {
            return mock;
        } else {
            return new CustomMetadataUnitOfWork(callback);
        }
    }


}