{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AppsReseller.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AppsReseller.Types.Product where

import           Network.Google.AppsReseller.Types.Sum
import           Network.Google.Prelude

-- | JSON template for address of a customer.
--
-- /See:/ 'address' smart constructor.
data Address = Address
    { _aOrganizationName :: !(Maybe Text)
    , _aKind             :: !Text
    , _aPostalCode       :: !(Maybe Text)
    , _aAddressLine1     :: !(Maybe Text)
    , _aLocality         :: !(Maybe Text)
    , _aContactName      :: !(Maybe Text)
    , _aAddressLine2     :: !(Maybe Text)
    , _aCountryCode      :: !(Maybe Text)
    , _aRegion           :: !(Maybe Text)
    , _aAddressLine3     :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Address' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aOrganizationName'
--
-- * 'aKind'
--
-- * 'aPostalCode'
--
-- * 'aAddressLine1'
--
-- * 'aLocality'
--
-- * 'aContactName'
--
-- * 'aAddressLine2'
--
-- * 'aCountryCode'
--
-- * 'aRegion'
--
-- * 'aAddressLine3'
address
    :: Address
address =
    Address
    { _aOrganizationName = Nothing
    , _aKind = "customers#address"
    , _aPostalCode = Nothing
    , _aAddressLine1 = Nothing
    , _aLocality = Nothing
    , _aContactName = Nothing
    , _aAddressLine2 = Nothing
    , _aCountryCode = Nothing
    , _aRegion = Nothing
    , _aAddressLine3 = Nothing
    }

-- | Name of the organization.
aOrganizationName :: Lens' Address (Maybe Text)
aOrganizationName
  = lens _aOrganizationName
      (\ s a -> s{_aOrganizationName = a})

-- | Identifies the resource as a customer address.
aKind :: Lens' Address Text
aKind = lens _aKind (\ s a -> s{_aKind = a})

-- | The postal code. This is in accordance with -
-- http:\/\/portablecontacts.net\/draft-spec.html#address_element.
aPostalCode :: Lens' Address (Maybe Text)
aPostalCode
  = lens _aPostalCode (\ s a -> s{_aPostalCode = a})

-- | Address line 1 of the address.
aAddressLine1 :: Lens' Address (Maybe Text)
aAddressLine1
  = lens _aAddressLine1
      (\ s a -> s{_aAddressLine1 = a})

-- | Name of the locality. This is in accordance with -
-- http:\/\/portablecontacts.net\/draft-spec.html#address_element.
aLocality :: Lens' Address (Maybe Text)
aLocality
  = lens _aLocality (\ s a -> s{_aLocality = a})

-- | Name of the contact person.
aContactName :: Lens' Address (Maybe Text)
aContactName
  = lens _aContactName (\ s a -> s{_aContactName = a})

-- | Address line 2 of the address.
aAddressLine2 :: Lens' Address (Maybe Text)
aAddressLine2
  = lens _aAddressLine2
      (\ s a -> s{_aAddressLine2 = a})

-- | ISO 3166 country code.
aCountryCode :: Lens' Address (Maybe Text)
aCountryCode
  = lens _aCountryCode (\ s a -> s{_aCountryCode = a})

-- | Name of the region. This is in accordance with -
-- http:\/\/portablecontacts.net\/draft-spec.html#address_element.
aRegion :: Lens' Address (Maybe Text)
aRegion = lens _aRegion (\ s a -> s{_aRegion = a})

-- | Address line 3 of the address.
aAddressLine3 :: Lens' Address (Maybe Text)
aAddressLine3
  = lens _aAddressLine3
      (\ s a -> s{_aAddressLine3 = a})

instance FromJSON Address where
        parseJSON
          = withObject "Address"
              (\ o ->
                 Address <$>
                   (o .:? "organizationName") <*>
                     (o .:? "kind" .!= "customers#address")
                     <*> (o .:? "postalCode")
                     <*> (o .:? "addressLine1")
                     <*> (o .:? "locality")
                     <*> (o .:? "contactName")
                     <*> (o .:? "addressLine2")
                     <*> (o .:? "countryCode")
                     <*> (o .:? "region")
                     <*> (o .:? "addressLine3"))

instance ToJSON Address where
        toJSON Address{..}
          = object
              (catMaybes
                 [("organizationName" .=) <$> _aOrganizationName,
                  Just ("kind" .= _aKind),
                  ("postalCode" .=) <$> _aPostalCode,
                  ("addressLine1" .=) <$> _aAddressLine1,
                  ("locality" .=) <$> _aLocality,
                  ("contactName" .=) <$> _aContactName,
                  ("addressLine2" .=) <$> _aAddressLine2,
                  ("countryCode" .=) <$> _aCountryCode,
                  ("region" .=) <$> _aRegion,
                  ("addressLine3" .=) <$> _aAddressLine3])

-- | JSON template for a customer.
--
-- /See:/ 'customer' smart constructor.
data Customer = Customer
    { _cResourceUiUrl  :: !(Maybe Text)
    , _cKind           :: !Text
    , _cCustomerId     :: !(Maybe Text)
    , _cAlternateEmail :: !(Maybe Text)
    , _cCustomerDomain :: !(Maybe Text)
    , _cPhoneNumber    :: !(Maybe Text)
    , _cPostalAddress  :: !(Maybe (Maybe Address))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Customer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cResourceUiUrl'
--
-- * 'cKind'
--
-- * 'cCustomerId'
--
-- * 'cAlternateEmail'
--
-- * 'cCustomerDomain'
--
-- * 'cPhoneNumber'
--
-- * 'cPostalAddress'
customer
    :: Customer
customer =
    Customer
    { _cResourceUiUrl = Nothing
    , _cKind = "reseller#customer"
    , _cCustomerId = Nothing
    , _cAlternateEmail = Nothing
    , _cCustomerDomain = Nothing
    , _cPhoneNumber = Nothing
    , _cPostalAddress = Nothing
    }

-- | Ui url for customer resource.
cResourceUiUrl :: Lens' Customer (Maybe Text)
cResourceUiUrl
  = lens _cResourceUiUrl
      (\ s a -> s{_cResourceUiUrl = a})

-- | Identifies the resource as a customer.
cKind :: Lens' Customer Text
cKind = lens _cKind (\ s a -> s{_cKind = a})

-- | The id of the customer.
cCustomerId :: Lens' Customer (Maybe Text)
cCustomerId
  = lens _cCustomerId (\ s a -> s{_cCustomerId = a})

-- | The alternate email of the customer.
cAlternateEmail :: Lens' Customer (Maybe Text)
cAlternateEmail
  = lens _cAlternateEmail
      (\ s a -> s{_cAlternateEmail = a})

-- | The domain name of the customer.
cCustomerDomain :: Lens' Customer (Maybe Text)
cCustomerDomain
  = lens _cCustomerDomain
      (\ s a -> s{_cCustomerDomain = a})

-- | The phone number of the customer.
cPhoneNumber :: Lens' Customer (Maybe Text)
cPhoneNumber
  = lens _cPhoneNumber (\ s a -> s{_cPhoneNumber = a})

-- | The postal address of the customer.
cPostalAddress :: Lens' Customer (Maybe (Maybe Address))
cPostalAddress
  = lens _cPostalAddress
      (\ s a -> s{_cPostalAddress = a})

instance FromJSON Customer where
        parseJSON
          = withObject "Customer"
              (\ o ->
                 Customer <$>
                   (o .:? "resourceUiUrl") <*>
                     (o .:? "kind" .!= "reseller#customer")
                     <*> (o .:? "customerId")
                     <*> (o .:? "alternateEmail")
                     <*> (o .:? "customerDomain")
                     <*> (o .:? "phoneNumber")
                     <*> (o .:? "postalAddress"))

instance ToJSON Customer where
        toJSON Customer{..}
          = object
              (catMaybes
                 [("resourceUiUrl" .=) <$> _cResourceUiUrl,
                  Just ("kind" .= _cKind),
                  ("customerId" .=) <$> _cCustomerId,
                  ("alternateEmail" .=) <$> _cAlternateEmail,
                  ("customerDomain" .=) <$> _cCustomerDomain,
                  ("phoneNumber" .=) <$> _cPhoneNumber,
                  ("postalAddress" .=) <$> _cPostalAddress])

-- | JSON template for the ChangePlan rpc request.
--
-- /See:/ 'changePlanRequest' smart constructor.
data ChangePlanRequest = ChangePlanRequest
    { _cprKind            :: !Text
    , _cprPlanName        :: !(Maybe Text)
    , _cprPurchaseOrderId :: !(Maybe Text)
    , _cprSeats           :: !(Maybe (Maybe Seats))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChangePlanRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cprKind'
--
-- * 'cprPlanName'
--
-- * 'cprPurchaseOrderId'
--
-- * 'cprSeats'
changePlanRequest
    :: ChangePlanRequest
changePlanRequest =
    ChangePlanRequest
    { _cprKind = "subscriptions#changePlanRequest"
    , _cprPlanName = Nothing
    , _cprPurchaseOrderId = Nothing
    , _cprSeats = Nothing
    }

-- | Identifies the resource as a subscription change plan request.
cprKind :: Lens' ChangePlanRequest Text
cprKind = lens _cprKind (\ s a -> s{_cprKind = a})

-- | Name of the plan to change to.
cprPlanName :: Lens' ChangePlanRequest (Maybe Text)
cprPlanName
  = lens _cprPlanName (\ s a -> s{_cprPlanName = a})

-- | Purchase order id for your order tracking purposes.
cprPurchaseOrderId :: Lens' ChangePlanRequest (Maybe Text)
cprPurchaseOrderId
  = lens _cprPurchaseOrderId
      (\ s a -> s{_cprPurchaseOrderId = a})

-- | Number\/Limit of seats in the new plan.
cprSeats :: Lens' ChangePlanRequest (Maybe (Maybe Seats))
cprSeats = lens _cprSeats (\ s a -> s{_cprSeats = a})

instance FromJSON ChangePlanRequest where
        parseJSON
          = withObject "ChangePlanRequest"
              (\ o ->
                 ChangePlanRequest <$>
                   (o .:? "kind" .!= "subscriptions#changePlanRequest")
                     <*> (o .:? "planName")
                     <*> (o .:? "purchaseOrderId")
                     <*> (o .:? "seats"))

instance ToJSON ChangePlanRequest where
        toJSON ChangePlanRequest{..}
          = object
              (catMaybes
                 [Just ("kind" .= _cprKind),
                  ("planName" .=) <$> _cprPlanName,
                  ("purchaseOrderId" .=) <$> _cprPurchaseOrderId,
                  ("seats" .=) <$> _cprSeats])

-- | JSON template for subscription seats.
--
-- /See:/ 'seats' smart constructor.
data Seats = Seats
    { _sNumberOfSeats         :: !(Maybe Int32)
    , _sMaximumNumberOfSeats  :: !(Maybe Int32)
    , _sLicensedNumberOfSeats :: !(Maybe Int32)
    , _sKind                  :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Seats' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sNumberOfSeats'
--
-- * 'sMaximumNumberOfSeats'
--
-- * 'sLicensedNumberOfSeats'
--
-- * 'sKind'
seats
    :: Seats
seats =
    Seats
    { _sNumberOfSeats = Nothing
    , _sMaximumNumberOfSeats = Nothing
    , _sLicensedNumberOfSeats = Nothing
    , _sKind = "subscriptions#seats"
    }

-- | Number of seats to purchase. This is applicable only for a commitment
-- plan.
sNumberOfSeats :: Lens' Seats (Maybe Int32)
sNumberOfSeats
  = lens _sNumberOfSeats
      (\ s a -> s{_sNumberOfSeats = a})

-- | Maximum number of seats that can be purchased. This needs to be provided
-- only for a non-commitment plan. For a commitment plan it is decided by
-- the contract.
sMaximumNumberOfSeats :: Lens' Seats (Maybe Int32)
sMaximumNumberOfSeats
  = lens _sMaximumNumberOfSeats
      (\ s a -> s{_sMaximumNumberOfSeats = a})

-- | Read-only field containing the current number of licensed seats for
-- FLEXIBLE Google-Apps subscriptions and secondary subscriptions such as
-- Google-Vault and Drive-storage.
sLicensedNumberOfSeats :: Lens' Seats (Maybe Int32)
sLicensedNumberOfSeats
  = lens _sLicensedNumberOfSeats
      (\ s a -> s{_sLicensedNumberOfSeats = a})

-- | Identifies the resource as a subscription change plan request.
sKind :: Lens' Seats Text
sKind = lens _sKind (\ s a -> s{_sKind = a})

instance FromJSON Seats where
        parseJSON
          = withObject "Seats"
              (\ o ->
                 Seats <$>
                   (o .:? "numberOfSeats") <*>
                     (o .:? "maximumNumberOfSeats")
                     <*> (o .:? "licensedNumberOfSeats")
                     <*> (o .:? "kind" .!= "subscriptions#seats"))

instance ToJSON Seats where
        toJSON Seats{..}
          = object
              (catMaybes
                 [("numberOfSeats" .=) <$> _sNumberOfSeats,
                  ("maximumNumberOfSeats" .=) <$>
                    _sMaximumNumberOfSeats,
                  ("licensedNumberOfSeats" .=) <$>
                    _sLicensedNumberOfSeats,
                  Just ("kind" .= _sKind)])

-- | JSON template for a subscription list.
--
-- /See:/ 'subscriptions' smart constructor.
data Subscriptions = Subscriptions
    { _subNextPageToken :: !(Maybe Text)
    , _subKind          :: !Text
    , _subSubscriptions :: !(Maybe [Maybe Subscription])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Subscriptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'subNextPageToken'
--
-- * 'subKind'
--
-- * 'subSubscriptions'
subscriptions
    :: Subscriptions
subscriptions =
    Subscriptions
    { _subNextPageToken = Nothing
    , _subKind = "reseller#subscriptions"
    , _subSubscriptions = Nothing
    }

-- | The continuation token, used to page through large result sets. Provide
-- this value in a subsequent request to return the next page of results.
subNextPageToken :: Lens' Subscriptions (Maybe Text)
subNextPageToken
  = lens _subNextPageToken
      (\ s a -> s{_subNextPageToken = a})

-- | Identifies the resource as a collection of subscriptions.
subKind :: Lens' Subscriptions Text
subKind = lens _subKind (\ s a -> s{_subKind = a})

-- | The subscriptions in this page of results.
subSubscriptions :: Lens' Subscriptions [Maybe Subscription]
subSubscriptions
  = lens _subSubscriptions
      (\ s a -> s{_subSubscriptions = a})
      . _Default
      . _Coerce

instance FromJSON Subscriptions where
        parseJSON
          = withObject "Subscriptions"
              (\ o ->
                 Subscriptions <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "reseller#subscriptions")
                     <*> (o .:? "subscriptions" .!= mempty))

instance ToJSON Subscriptions where
        toJSON Subscriptions{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _subNextPageToken,
                  Just ("kind" .= _subKind),
                  ("subscriptions" .=) <$> _subSubscriptions])

-- | JSON template for a subscription.
--
-- /See:/ 'subscription' smart constructor.
data Subscription = Subscription
    { _ssCreationTime      :: !(Maybe Int64)
    , _ssBillingMethod     :: !(Maybe Text)
    , _ssStatus            :: !(Maybe Text)
    , _ssTrialSettings     :: !(Maybe SubscriptionTrialSettings)
    , _ssResourceUiUrl     :: !(Maybe Text)
    , _ssKind              :: !Text
    , _ssSkuId             :: !(Maybe Text)
    , _ssPlan              :: !(Maybe SubscriptionPlan)
    , _ssCustomerId        :: !(Maybe Text)
    , _ssSuspensionReasons :: !(Maybe [Text])
    , _ssTransferInfo      :: !(Maybe SubscriptionTransferInfo)
    , _ssPurchaseOrderId   :: !(Maybe Text)
    , _ssSeats             :: !(Maybe (Maybe Seats))
    , _ssRenewalSettings   :: !(Maybe (Maybe RenewalSettings))
    , _ssSubscriptionId    :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Subscription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssCreationTime'
--
-- * 'ssBillingMethod'
--
-- * 'ssStatus'
--
-- * 'ssTrialSettings'
--
-- * 'ssResourceUiUrl'
--
-- * 'ssKind'
--
-- * 'ssSkuId'
--
-- * 'ssPlan'
--
-- * 'ssCustomerId'
--
-- * 'ssSuspensionReasons'
--
-- * 'ssTransferInfo'
--
-- * 'ssPurchaseOrderId'
--
-- * 'ssSeats'
--
-- * 'ssRenewalSettings'
--
-- * 'ssSubscriptionId'
subscription
    :: Subscription
subscription =
    Subscription
    { _ssCreationTime = Nothing
    , _ssBillingMethod = Nothing
    , _ssStatus = Nothing
    , _ssTrialSettings = Nothing
    , _ssResourceUiUrl = Nothing
    , _ssKind = "reseller#subscription"
    , _ssSkuId = Nothing
    , _ssPlan = Nothing
    , _ssCustomerId = Nothing
    , _ssSuspensionReasons = Nothing
    , _ssTransferInfo = Nothing
    , _ssPurchaseOrderId = Nothing
    , _ssSeats = Nothing
    , _ssRenewalSettings = Nothing
    , _ssSubscriptionId = Nothing
    }

-- | Creation time of this subscription in milliseconds since Unix epoch.
ssCreationTime :: Lens' Subscription (Maybe Int64)
ssCreationTime
  = lens _ssCreationTime
      (\ s a -> s{_ssCreationTime = a})

-- | Billing method of this subscription.
ssBillingMethod :: Lens' Subscription (Maybe Text)
ssBillingMethod
  = lens _ssBillingMethod
      (\ s a -> s{_ssBillingMethod = a})

-- | Status of the subscription.
ssStatus :: Lens' Subscription (Maybe Text)
ssStatus = lens _ssStatus (\ s a -> s{_ssStatus = a})

-- | Trial Settings of the subscription.
ssTrialSettings :: Lens' Subscription (Maybe SubscriptionTrialSettings)
ssTrialSettings
  = lens _ssTrialSettings
      (\ s a -> s{_ssTrialSettings = a})

-- | Ui url for subscription resource.
ssResourceUiUrl :: Lens' Subscription (Maybe Text)
ssResourceUiUrl
  = lens _ssResourceUiUrl
      (\ s a -> s{_ssResourceUiUrl = a})

-- | Identifies the resource as a Subscription.
ssKind :: Lens' Subscription Text
ssKind = lens _ssKind (\ s a -> s{_ssKind = a})

-- | Name of the sku for which this subscription is purchased.
ssSkuId :: Lens' Subscription (Maybe Text)
ssSkuId = lens _ssSkuId (\ s a -> s{_ssSkuId = a})

-- | Plan details of the subscription
ssPlan :: Lens' Subscription (Maybe SubscriptionPlan)
ssPlan = lens _ssPlan (\ s a -> s{_ssPlan = a})

-- | The id of the customer to whom the subscription belongs.
ssCustomerId :: Lens' Subscription (Maybe Text)
ssCustomerId
  = lens _ssCustomerId (\ s a -> s{_ssCustomerId = a})

-- | Suspension Reasons
ssSuspensionReasons :: Lens' Subscription [Text]
ssSuspensionReasons
  = lens _ssSuspensionReasons
      (\ s a -> s{_ssSuspensionReasons = a})
      . _Default
      . _Coerce

-- | Transfer related information for the subscription.
ssTransferInfo :: Lens' Subscription (Maybe SubscriptionTransferInfo)
ssTransferInfo
  = lens _ssTransferInfo
      (\ s a -> s{_ssTransferInfo = a})

-- | Purchase order id for your order tracking purposes.
ssPurchaseOrderId :: Lens' Subscription (Maybe Text)
ssPurchaseOrderId
  = lens _ssPurchaseOrderId
      (\ s a -> s{_ssPurchaseOrderId = a})

-- | Number\/Limit of seats in the new plan.
ssSeats :: Lens' Subscription (Maybe (Maybe Seats))
ssSeats = lens _ssSeats (\ s a -> s{_ssSeats = a})

-- | Renewal settings of the subscription.
ssRenewalSettings :: Lens' Subscription (Maybe (Maybe RenewalSettings))
ssRenewalSettings
  = lens _ssRenewalSettings
      (\ s a -> s{_ssRenewalSettings = a})

-- | The id of the subscription.
ssSubscriptionId :: Lens' Subscription (Maybe Text)
ssSubscriptionId
  = lens _ssSubscriptionId
      (\ s a -> s{_ssSubscriptionId = a})

instance FromJSON Subscription where
        parseJSON
          = withObject "Subscription"
              (\ o ->
                 Subscription <$>
                   (o .:? "creationTime") <*> (o .:? "billingMethod")
                     <*> (o .:? "status")
                     <*> (o .:? "trialSettings")
                     <*> (o .:? "resourceUiUrl")
                     <*> (o .:? "kind" .!= "reseller#subscription")
                     <*> (o .:? "skuId")
                     <*> (o .:? "plan")
                     <*> (o .:? "customerId")
                     <*> (o .:? "suspensionReasons" .!= mempty)
                     <*> (o .:? "transferInfo")
                     <*> (o .:? "purchaseOrderId")
                     <*> (o .:? "seats")
                     <*> (o .:? "renewalSettings")
                     <*> (o .:? "subscriptionId"))

instance ToJSON Subscription where
        toJSON Subscription{..}
          = object
              (catMaybes
                 [("creationTime" .=) <$> _ssCreationTime,
                  ("billingMethod" .=) <$> _ssBillingMethod,
                  ("status" .=) <$> _ssStatus,
                  ("trialSettings" .=) <$> _ssTrialSettings,
                  ("resourceUiUrl" .=) <$> _ssResourceUiUrl,
                  Just ("kind" .= _ssKind), ("skuId" .=) <$> _ssSkuId,
                  ("plan" .=) <$> _ssPlan,
                  ("customerId" .=) <$> _ssCustomerId,
                  ("suspensionReasons" .=) <$> _ssSuspensionReasons,
                  ("transferInfo" .=) <$> _ssTransferInfo,
                  ("purchaseOrderId" .=) <$> _ssPurchaseOrderId,
                  ("seats" .=) <$> _ssSeats,
                  ("renewalSettings" .=) <$> _ssRenewalSettings,
                  ("subscriptionId" .=) <$> _ssSubscriptionId])

-- | JSON template for a subscription renewal settings.
--
-- /See:/ 'renewalSettings' smart constructor.
data RenewalSettings = RenewalSettings
    { _rsKind        :: !Text
    , _rsRenewalType :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RenewalSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsKind'
--
-- * 'rsRenewalType'
renewalSettings
    :: RenewalSettings
renewalSettings =
    RenewalSettings
    { _rsKind = "subscriptions#renewalSettings"
    , _rsRenewalType = Nothing
    }

-- | Identifies the resource as a subscription renewal setting.
rsKind :: Lens' RenewalSettings Text
rsKind = lens _rsKind (\ s a -> s{_rsKind = a})

-- | Subscription renewal type.
rsRenewalType :: Lens' RenewalSettings (Maybe Text)
rsRenewalType
  = lens _rsRenewalType
      (\ s a -> s{_rsRenewalType = a})

instance FromJSON RenewalSettings where
        parseJSON
          = withObject "RenewalSettings"
              (\ o ->
                 RenewalSettings <$>
                   (o .:? "kind" .!= "subscriptions#renewalSettings")
                     <*> (o .:? "renewalType"))

instance ToJSON RenewalSettings where
        toJSON RenewalSettings{..}
          = object
              (catMaybes
                 [Just ("kind" .= _rsKind),
                  ("renewalType" .=) <$> _rsRenewalType])