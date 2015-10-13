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
-- Module      : Network.Google.Resource.AdSense.AdClients.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all ad clients in this AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @AdsenseAdClientsList@.
module Network.Google.Resource.AdSense.AdClients.List
    (
    -- * REST Resource
      AdClientsListResource

    -- * Creating a Request
    , adClientsList'
    , AdClientsList'

    -- * Request Lenses
    , aclPageToken
    , aclMaxResults
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsenseAdClientsList@ method which the
-- 'AdClientsList'' request conforms to.
type AdClientsListResource =
     "adclients" :>
       QueryParam "pageToken" Text :>
         QueryParam "maxResults" Int32 :>
           QueryParam "alt" AltJSON :> Get '[JSON] AdClients

-- | List all ad clients in this AdSense account.
--
-- /See:/ 'adClientsList'' smart constructor.
data AdClientsList' = AdClientsList'
    { _aclPageToken  :: !(Maybe Text)
    , _aclMaxResults :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdClientsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aclPageToken'
--
-- * 'aclMaxResults'
adClientsList'
    :: AdClientsList'
adClientsList' =
    AdClientsList'
    { _aclPageToken = Nothing
    , _aclMaxResults = Nothing
    }

-- | A continuation token, used to page through ad clients. To retrieve the
-- next page, set this parameter to the value of \"nextPageToken\" from the
-- previous response.
aclPageToken :: Lens' AdClientsList' (Maybe Text)
aclPageToken
  = lens _aclPageToken (\ s a -> s{_aclPageToken = a})

-- | The maximum number of ad clients to include in the response, used for
-- paging.
aclMaxResults :: Lens' AdClientsList' (Maybe Int32)
aclMaxResults
  = lens _aclMaxResults
      (\ s a -> s{_aclMaxResults = a})

instance GoogleRequest AdClientsList' where
        type Rs AdClientsList' = AdClients
        requestClient AdClientsList'{..}
          = go _aclPageToken _aclMaxResults (Just AltJSON)
              adSenseService
          where go
                  = buildClient (Proxy :: Proxy AdClientsListResource)
                      mempty
