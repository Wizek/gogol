{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Content.Orders.Refund
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Refund a portion of the order, up to the full amount paid.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.orders.refund@.
module Network.Google.API.Content.Orders.Refund
    (
    -- * REST Resource
      OrdersRefundAPI

    -- * Creating a Request
    , ordersRefund'
    , OrdersRefund'

    -- * Request Lenses
    , orQuotaUser
    , orMerchantId
    , orPrettyPrint
    , orUserIp
    , orKey
    , orOauthToken
    , orOrderId
    , orFields
    , orAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.Shopping.Content.Types

-- | A resource alias for content.orders.refund which the
-- 'OrdersRefund'' request conforms to.
type OrdersRefundAPI =
     Capture "merchantId" Word64 :>
       "orders" :>
         Capture "orderId" Text :>
           "refund" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :>
                           Post '[JSON] OrdersRefundResponse

-- | Refund a portion of the order, up to the full amount paid.
--
-- /See:/ 'ordersRefund'' smart constructor.
data OrdersRefund' = OrdersRefund'
    { _orQuotaUser   :: !(Maybe Text)
    , _orMerchantId  :: !Word64
    , _orPrettyPrint :: !Bool
    , _orUserIp      :: !(Maybe Text)
    , _orKey         :: !(Maybe Text)
    , _orOauthToken  :: !(Maybe Text)
    , _orOrderId     :: !Text
    , _orFields      :: !(Maybe Text)
    , _orAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersRefund'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orQuotaUser'
--
-- * 'orMerchantId'
--
-- * 'orPrettyPrint'
--
-- * 'orUserIp'
--
-- * 'orKey'
--
-- * 'orOauthToken'
--
-- * 'orOrderId'
--
-- * 'orFields'
--
-- * 'orAlt'
ordersRefund'
    :: Word64 -- ^ 'merchantId'
    -> Text -- ^ 'orderId'
    -> OrdersRefund'
ordersRefund' pOrMerchantId_ pOrOrderId_ =
    OrdersRefund'
    { _orQuotaUser = Nothing
    , _orMerchantId = pOrMerchantId_
    , _orPrettyPrint = True
    , _orUserIp = Nothing
    , _orKey = Nothing
    , _orOauthToken = Nothing
    , _orOrderId = pOrOrderId_
    , _orFields = Nothing
    , _orAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
orQuotaUser :: Lens' OrdersRefund' (Maybe Text)
orQuotaUser
  = lens _orQuotaUser (\ s a -> s{_orQuotaUser = a})

-- | The ID of the managing account.
orMerchantId :: Lens' OrdersRefund' Word64
orMerchantId
  = lens _orMerchantId (\ s a -> s{_orMerchantId = a})

-- | Returns response with indentations and line breaks.
orPrettyPrint :: Lens' OrdersRefund' Bool
orPrettyPrint
  = lens _orPrettyPrint
      (\ s a -> s{_orPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
orUserIp :: Lens' OrdersRefund' (Maybe Text)
orUserIp = lens _orUserIp (\ s a -> s{_orUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
orKey :: Lens' OrdersRefund' (Maybe Text)
orKey = lens _orKey (\ s a -> s{_orKey = a})

-- | OAuth 2.0 token for the current user.
orOauthToken :: Lens' OrdersRefund' (Maybe Text)
orOauthToken
  = lens _orOauthToken (\ s a -> s{_orOauthToken = a})

-- | The ID of the order to refund.
orOrderId :: Lens' OrdersRefund' Text
orOrderId
  = lens _orOrderId (\ s a -> s{_orOrderId = a})

-- | Selector specifying which fields to include in a partial response.
orFields :: Lens' OrdersRefund' (Maybe Text)
orFields = lens _orFields (\ s a -> s{_orFields = a})

-- | Data format for the response.
orAlt :: Lens' OrdersRefund' Alt
orAlt = lens _orAlt (\ s a -> s{_orAlt = a})

instance GoogleRequest OrdersRefund' where
        type Rs OrdersRefund' = OrdersRefundResponse
        request = requestWithRoute defReq shoppingContentURL
        requestWithRoute r u OrdersRefund'{..}
          = go _orQuotaUser _orMerchantId (Just _orPrettyPrint)
              _orUserIp
              _orKey
              _orOauthToken
              _orOrderId
              _orFields
              (Just _orAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy OrdersRefundAPI) r
                      u
