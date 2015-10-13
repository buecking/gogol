{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.AdExchangeSeller.Accounts.Metadata.Metrics.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List the metadata for the metrics available to this AdExchange account.
--
-- /See:/ <https://developers.google.com/ad-exchange/seller-rest/ Ad Exchange Seller API Reference> for @AdexchangesellerAccountsMetadataMetricsList@.
module Network.Google.Resource.AdExchangeSeller.Accounts.Metadata.Metrics.List
    (
    -- * REST Resource
      AccountsMetadataMetricsListResource

    -- * Creating a Request
    , accountsMetadataMetricsList'
    , AccountsMetadataMetricsList'

    -- * Request Lenses
    , ammlAccountId
    ) where

import           Network.Google.AdExchangeSeller.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangesellerAccountsMetadataMetricsList@ method which the
-- 'AccountsMetadataMetricsList'' request conforms to.
type AccountsMetadataMetricsListResource =
     "accounts" :>
       Capture "accountId" Text :>
         "metadata" :>
           "metrics" :>
             QueryParam "alt" AltJSON :> Get '[JSON] Metadata

-- | List the metadata for the metrics available to this AdExchange account.
--
-- /See:/ 'accountsMetadataMetricsList'' smart constructor.
newtype AccountsMetadataMetricsList' = AccountsMetadataMetricsList'
    { _ammlAccountId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsMetadataMetricsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ammlAccountId'
accountsMetadataMetricsList'
    :: Text -- ^ 'accountId'
    -> AccountsMetadataMetricsList'
accountsMetadataMetricsList' pAmmlAccountId_ =
    AccountsMetadataMetricsList'
    { _ammlAccountId = pAmmlAccountId_
    }

-- | Account with visibility to the metrics.
ammlAccountId :: Lens' AccountsMetadataMetricsList' Text
ammlAccountId
  = lens _ammlAccountId
      (\ s a -> s{_ammlAccountId = a})

instance GoogleRequest AccountsMetadataMetricsList'
         where
        type Rs AccountsMetadataMetricsList' = Metadata
        requestClient AccountsMetadataMetricsList'{..}
          = go _ammlAccountId (Just AltJSON)
              adExchangeSellerService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsMetadataMetricsListResource)
                      mempty
