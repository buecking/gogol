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
-- Module      : Network.Google.Resource.AppState.States.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a key and the data associated with it. The key is removed and no
-- longer counts against the key quota. Note that since this method is not
-- safe in the face of concurrent modifications, it should only be used for
-- development and testing purposes. Invoking this method in shipping code
-- can result in data loss and data corruption.
--
-- /See:/ <https://developers.google.com/games/services/web/api/states Google App State API Reference> for @AppStateStatesDelete@.
module Network.Google.Resource.AppState.States.Delete
    (
    -- * REST Resource
      StatesDeleteResource

    -- * Creating a Request
    , statesDelete'
    , StatesDelete'

    -- * Request Lenses
    , sdStateKey
    ) where

import           Network.Google.AppState.Types
import           Network.Google.Prelude

-- | A resource alias for @AppStateStatesDelete@ method which the
-- 'StatesDelete'' request conforms to.
type StatesDeleteResource =
     "states" :>
       Capture "stateKey" Int32 :>
         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a key and the data associated with it. The key is removed and no
-- longer counts against the key quota. Note that since this method is not
-- safe in the face of concurrent modifications, it should only be used for
-- development and testing purposes. Invoking this method in shipping code
-- can result in data loss and data corruption.
--
-- /See:/ 'statesDelete'' smart constructor.
newtype StatesDelete' = StatesDelete'
    { _sdStateKey :: Int32
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'StatesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdStateKey'
statesDelete'
    :: Int32 -- ^ 'stateKey'
    -> StatesDelete'
statesDelete' pSdStateKey_ =
    StatesDelete'
    { _sdStateKey = pSdStateKey_
    }

-- | The key for the data to be retrieved.
sdStateKey :: Lens' StatesDelete' Int32
sdStateKey
  = lens _sdStateKey (\ s a -> s{_sdStateKey = a})

instance GoogleRequest StatesDelete' where
        type Rs StatesDelete' = ()
        requestClient StatesDelete'{..}
          = go _sdStateKey (Just AltJSON) appStateService
          where go
                  = buildClient (Proxy :: Proxy StatesDeleteResource)
                      mempty
