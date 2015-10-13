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
-- Module      : Network.Google.Resource.AndroidEnterprise.Products.Approve
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Approves the specified product (and the relevant app permissions, if
-- any).
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseProductsApprove@.
module Network.Google.Resource.AndroidEnterprise.Products.Approve
    (
    -- * REST Resource
      ProductsApproveResource

    -- * Creating a Request
    , productsApprove'
    , ProductsApprove'

    -- * Request Lenses
    , paEnterpriseId
    , paPayload
    , paProductId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseProductsApprove@ method which the
-- 'ProductsApprove'' request conforms to.
type ProductsApproveResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "products" :>
           Capture "productId" Text :>
             "approve" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] ProductsApproveRequest :>
                   Post '[JSON] ()

-- | Approves the specified product (and the relevant app permissions, if
-- any).
--
-- /See:/ 'productsApprove'' smart constructor.
data ProductsApprove' = ProductsApprove'
    { _paEnterpriseId :: !Text
    , _paPayload      :: !ProductsApproveRequest
    , _paProductId    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProductsApprove'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paEnterpriseId'
--
-- * 'paPayload'
--
-- * 'paProductId'
productsApprove'
    :: Text -- ^ 'enterpriseId'
    -> ProductsApproveRequest -- ^ 'payload'
    -> Text -- ^ 'productId'
    -> ProductsApprove'
productsApprove' pPaEnterpriseId_ pPaPayload_ pPaProductId_ =
    ProductsApprove'
    { _paEnterpriseId = pPaEnterpriseId_
    , _paPayload = pPaPayload_
    , _paProductId = pPaProductId_
    }

-- | The ID of the enterprise.
paEnterpriseId :: Lens' ProductsApprove' Text
paEnterpriseId
  = lens _paEnterpriseId
      (\ s a -> s{_paEnterpriseId = a})

-- | Multipart request metadata.
paPayload :: Lens' ProductsApprove' ProductsApproveRequest
paPayload
  = lens _paPayload (\ s a -> s{_paPayload = a})

-- | The ID of the product.
paProductId :: Lens' ProductsApprove' Text
paProductId
  = lens _paProductId (\ s a -> s{_paProductId = a})

instance GoogleRequest ProductsApprove' where
        type Rs ProductsApprove' = ()
        requestClient ProductsApprove'{..}
          = go _paEnterpriseId _paProductId (Just AltJSON)
              _paPayload
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy ProductsApproveResource)
                      mempty
