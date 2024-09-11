/**
 * Created by wenboliu on 23/08/2024.
 */

public inherited sharing class Application {
    public static final fflib_Application.UnitOfWorkFactory unitOfWork =
            new fflib_Application.UnitOfWorkFactory(
                    new List<SObjectType> {
                            Account.sObjectType,
                            Course__c.sObjectType,
                            Setting__c.SObjectType,
                            Event.SObjectType
                    }
            );

    public static final fflib_Application.ServiceFactory Service {
        get {
            if (Service == null) {
                Map<Type, Type> serviceTypeByTypeMap = new Map<Type, Type>{
                        IOASBitlyService.class => OASBitlyServiceImpl.class,
                        IOAuth2AuthenticationService.class => OAuth2AuthenticationServiceImpl.class,
                        ISettingsService.class => SettingsServiceImpl.class

                };

                Service = new fflib_Application.ServiceFactory(serviceTypeByTypeMap);
            }
            return Service;
        }
        set;
    }

    public static final fflib_Application.SelectorFactory selector =
            new fflib_Application.SelectorFactory(
                    new Map<SObjectType, Type> {
                            Google_Config__mdt.SObjectType => GoogleConfigSelector.class
                    }
            );

    public static final fflib_Application.DomainFactory Domain =
            new fflib_Application.DomainFactory(
                    Application.Selector,
                    new Map<SObjectType, Type> {
                            Event.SObjectType => EventDomain.Constructor.class
                    });

    public static final CustomMetadataUnitOfWorkFactory CustomMetadataUnitOfWork = new CustomMetadataUnitOfWorkFactory();

}