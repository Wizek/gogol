{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Content.Orders.Updateshipment
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a shipment\'s status, carrier, and\/or tracking ID.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.orders.updateshipment@.
module Network.Google.API.Content.Orders.Updateshipment
    (
    -- * REST Resource
      OrdersUpdateshipmentAPI

    -- * Creating a Request
    , ordersUpdateshipment'
    , OrdersUpdateshipment'

    -- * Request Lenses
    , ouQuotaUser
    , ouMerchantId
    , ouPrettyPrint
    , ouUserIp
    , ouKey
    , ouOauthToken
    , ouOrderId
    , ouFields
    , ouAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.Shopping.Content.Types

-- | A resource alias for content.orders.updateshipment which the
-- 'OrdersUpdateshipment'' request conforms to.
type OrdersUpdateshipmentAPI =
     Capture "merchantId" Word64 :>
       "orders" :>
         Capture "orderId" Text :>
           "updateShipment" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :>
                           Post '[JSON] OrdersUpdateShipmentResponse

-- | Updates a shipment\'s status, carrier, and\/or tracking ID.
--
-- /See:/ 'ordersUpdateshipment'' smart constructor.
data OrdersUpdateshipment' = OrdersUpdateshipment'
    { _ouQuotaUser   :: !(Maybe Text)
    , _ouMerchantId  :: !Word64
    , _ouPrettyPrint :: !Bool
    , _ouUserIp      :: !(Maybe Text)
    , _ouKey         :: !(Maybe Text)
    , _ouOauthToken  :: !(Maybe Text)
    , _ouOrderId     :: !Text
    , _ouFields      :: !(Maybe Text)
    , _ouAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersUpdateshipment'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ouQuotaUser'
--
-- * 'ouMerchantId'
--
-- * 'ouPrettyPrint'
--
-- * 'ouUserIp'
--
-- * 'ouKey'
--
-- * 'ouOauthToken'
--
-- * 'ouOrderId'
--
-- * 'ouFields'
--
-- * 'ouAlt'
ordersUpdateshipment'
    :: Word64 -- ^ 'merchantId'
    -> Text -- ^ 'orderId'
    -> OrdersUpdateshipment'
ordersUpdateshipment' pOuMerchantId_ pOuOrderId_ =
    OrdersUpdateshipment'
    { _ouQuotaUser = Nothing
    , _ouMerchantId = pOuMerchantId_
    , _ouPrettyPrint = True
    , _ouUserIp = Nothing
    , _ouKey = Nothing
    , _ouOauthToken = Nothing
    , _ouOrderId = pOuOrderId_
    , _ouFields = Nothing
    , _ouAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ouQuotaUser :: Lens' OrdersUpdateshipment' (Maybe Text)
ouQuotaUser
  = lens _ouQuotaUser (\ s a -> s{_ouQuotaUser = a})

-- | The ID of the managing account.
ouMerchantId :: Lens' OrdersUpdateshipment' Word64
ouMerchantId
  = lens _ouMerchantId (\ s a -> s{_ouMerchantId = a})

-- | Returns response with indentations and line breaks.
ouPrettyPrint :: Lens' OrdersUpdateshipment' Bool
ouPrettyPrint
  = lens _ouPrettyPrint
      (\ s a -> s{_ouPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ouUserIp :: Lens' OrdersUpdateshipment' (Maybe Text)
ouUserIp = lens _ouUserIp (\ s a -> s{_ouUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ouKey :: Lens' OrdersUpdateshipment' (Maybe Text)
ouKey = lens _ouKey (\ s a -> s{_ouKey = a})

-- | OAuth 2.0 token for the current user.
ouOauthToken :: Lens' OrdersUpdateshipment' (Maybe Text)
ouOauthToken
  = lens _ouOauthToken (\ s a -> s{_ouOauthToken = a})

-- | The ID of the order.
ouOrderId :: Lens' OrdersUpdateshipment' Text
ouOrderId
  = lens _ouOrderId (\ s a -> s{_ouOrderId = a})

-- | Selector specifying which fields to include in a partial response.
ouFields :: Lens' OrdersUpdateshipment' (Maybe Text)
ouFields = lens _ouFields (\ s a -> s{_ouFields = a})

-- | Data format for the response.
ouAlt :: Lens' OrdersUpdateshipment' Alt
ouAlt = lens _ouAlt (\ s a -> s{_ouAlt = a})

instance GoogleRequest OrdersUpdateshipment' where
        type Rs OrdersUpdateshipment' =
             OrdersUpdateShipmentResponse
        request = requestWithRoute defReq shoppingContentURL
        requestWithRoute r u OrdersUpdateshipment'{..}
          = go _ouQuotaUser _ouMerchantId (Just _ouPrettyPrint)
              _ouUserIp
              _ouKey
              _ouOauthToken
              _ouOrderId
              _ouFields
              (Just _ouAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy OrdersUpdateshipmentAPI)
                      r
                      u
