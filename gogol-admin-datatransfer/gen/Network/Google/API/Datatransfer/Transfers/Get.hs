{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Datatransfer.Transfers.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a data transfer request by its resource ID.
--
-- /See:/ <https://developers.google.com/admin-sdk/data-transfer/ Admin Data Transfer API Reference> for @datatransfer.transfers.get@.
module Network.Google.API.Datatransfer.Transfers.Get
    (
    -- * REST Resource
      TransfersGetAPI

    -- * Creating a Request
    , transfersGet'
    , TransfersGet'

    -- * Request Lenses
    , tgQuotaUser
    , tgPrettyPrint
    , tgUserIp
    , tgKey
    , tgOauthToken
    , tgDataTransferId
    , tgFields
    , tgAlt
    ) where

import           Network.Google.Admin.DataTransfer.Types
import           Network.Google.Prelude

-- | A resource alias for datatransfer.transfers.get which the
-- 'TransfersGet'' request conforms to.
type TransfersGetAPI =
     "transfers" :>
       Capture "dataTransferId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Get '[JSON] DataTransfer

-- | Retrieves a data transfer request by its resource ID.
--
-- /See:/ 'transfersGet'' smart constructor.
data TransfersGet' = TransfersGet'
    { _tgQuotaUser      :: !(Maybe Text)
    , _tgPrettyPrint    :: !Bool
    , _tgUserIp         :: !(Maybe Text)
    , _tgKey            :: !(Maybe Text)
    , _tgOauthToken     :: !(Maybe Text)
    , _tgDataTransferId :: !Text
    , _tgFields         :: !(Maybe Text)
    , _tgAlt            :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TransfersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tgQuotaUser'
--
-- * 'tgPrettyPrint'
--
-- * 'tgUserIp'
--
-- * 'tgKey'
--
-- * 'tgOauthToken'
--
-- * 'tgDataTransferId'
--
-- * 'tgFields'
--
-- * 'tgAlt'
transfersGet'
    :: Text -- ^ 'dataTransferId'
    -> TransfersGet'
transfersGet' pTgDataTransferId_ =
    TransfersGet'
    { _tgQuotaUser = Nothing
    , _tgPrettyPrint = True
    , _tgUserIp = Nothing
    , _tgKey = Nothing
    , _tgOauthToken = Nothing
    , _tgDataTransferId = pTgDataTransferId_
    , _tgFields = Nothing
    , _tgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tgQuotaUser :: Lens' TransfersGet' (Maybe Text)
tgQuotaUser
  = lens _tgQuotaUser (\ s a -> s{_tgQuotaUser = a})

-- | Returns response with indentations and line breaks.
tgPrettyPrint :: Lens' TransfersGet' Bool
tgPrettyPrint
  = lens _tgPrettyPrint
      (\ s a -> s{_tgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tgUserIp :: Lens' TransfersGet' (Maybe Text)
tgUserIp = lens _tgUserIp (\ s a -> s{_tgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tgKey :: Lens' TransfersGet' (Maybe Text)
tgKey = lens _tgKey (\ s a -> s{_tgKey = a})

-- | OAuth 2.0 token for the current user.
tgOauthToken :: Lens' TransfersGet' (Maybe Text)
tgOauthToken
  = lens _tgOauthToken (\ s a -> s{_tgOauthToken = a})

-- | ID of the resource to be retrieved. This is returned in the response
-- from the insert method.
tgDataTransferId :: Lens' TransfersGet' Text
tgDataTransferId
  = lens _tgDataTransferId
      (\ s a -> s{_tgDataTransferId = a})

-- | Selector specifying which fields to include in a partial response.
tgFields :: Lens' TransfersGet' (Maybe Text)
tgFields = lens _tgFields (\ s a -> s{_tgFields = a})

-- | Data format for the response.
tgAlt :: Lens' TransfersGet' Alt
tgAlt = lens _tgAlt (\ s a -> s{_tgAlt = a})

instance GoogleRequest TransfersGet' where
        type Rs TransfersGet' = DataTransfer
        request
          = requestWithRoute defReq adminDataTransferURL
        requestWithRoute r u TransfersGet'{..}
          = go _tgQuotaUser (Just _tgPrettyPrint) _tgUserIp
              _tgKey
              _tgOauthToken
              _tgDataTransferId
              _tgFields
              (Just _tgAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy TransfersGetAPI) r
                      u
