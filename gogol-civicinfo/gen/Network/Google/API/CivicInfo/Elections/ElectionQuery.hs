{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.CivicInfo.Elections.ElectionQuery
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List of available elections to query.
--
-- /See:/ <https://developers.google.com/civic-information Google Civic Information API Reference> for @civicinfo.elections.electionQuery@.
module Network.Google.API.CivicInfo.Elections.ElectionQuery
    (
    -- * REST Resource
      ElectionsElectionQueryAPI

    -- * Creating a Request
    , electionsElectionQuery'
    , ElectionsElectionQuery'

    -- * Request Lenses
    , eeqQuotaUser
    , eeqPrettyPrint
    , eeqUserIp
    , eeqKey
    , eeqOauthToken
    , eeqFields
    , eeqAlt
    ) where

import           Network.Google.CivicInfo.Types
import           Network.Google.Prelude

-- | A resource alias for civicinfo.elections.electionQuery which the
-- 'ElectionsElectionQuery'' request conforms to.
type ElectionsElectionQueryAPI =
     "elections" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Text :>
               QueryParam "oauth_token" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" Alt :>
                     Get '[JSON] ElectionsQueryResponse

-- | List of available elections to query.
--
-- /See:/ 'electionsElectionQuery'' smart constructor.
data ElectionsElectionQuery' = ElectionsElectionQuery'
    { _eeqQuotaUser   :: !(Maybe Text)
    , _eeqPrettyPrint :: !Bool
    , _eeqUserIp      :: !(Maybe Text)
    , _eeqKey         :: !(Maybe Text)
    , _eeqOauthToken  :: !(Maybe Text)
    , _eeqFields      :: !(Maybe Text)
    , _eeqAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ElectionsElectionQuery'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eeqQuotaUser'
--
-- * 'eeqPrettyPrint'
--
-- * 'eeqUserIp'
--
-- * 'eeqKey'
--
-- * 'eeqOauthToken'
--
-- * 'eeqFields'
--
-- * 'eeqAlt'
electionsElectionQuery'
    :: ElectionsElectionQuery'
electionsElectionQuery' =
    ElectionsElectionQuery'
    { _eeqQuotaUser = Nothing
    , _eeqPrettyPrint = True
    , _eeqUserIp = Nothing
    , _eeqKey = Nothing
    , _eeqOauthToken = Nothing
    , _eeqFields = Nothing
    , _eeqAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eeqQuotaUser :: Lens' ElectionsElectionQuery' (Maybe Text)
eeqQuotaUser
  = lens _eeqQuotaUser (\ s a -> s{_eeqQuotaUser = a})

-- | Returns response with indentations and line breaks.
eeqPrettyPrint :: Lens' ElectionsElectionQuery' Bool
eeqPrettyPrint
  = lens _eeqPrettyPrint
      (\ s a -> s{_eeqPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eeqUserIp :: Lens' ElectionsElectionQuery' (Maybe Text)
eeqUserIp
  = lens _eeqUserIp (\ s a -> s{_eeqUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eeqKey :: Lens' ElectionsElectionQuery' (Maybe Text)
eeqKey = lens _eeqKey (\ s a -> s{_eeqKey = a})

-- | OAuth 2.0 token for the current user.
eeqOauthToken :: Lens' ElectionsElectionQuery' (Maybe Text)
eeqOauthToken
  = lens _eeqOauthToken
      (\ s a -> s{_eeqOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
eeqFields :: Lens' ElectionsElectionQuery' (Maybe Text)
eeqFields
  = lens _eeqFields (\ s a -> s{_eeqFields = a})

-- | Data format for the response.
eeqAlt :: Lens' ElectionsElectionQuery' Alt
eeqAlt = lens _eeqAlt (\ s a -> s{_eeqAlt = a})

instance GoogleRequest ElectionsElectionQuery' where
        type Rs ElectionsElectionQuery' =
             ElectionsQueryResponse
        request = requestWithRoute defReq civicInfoURL
        requestWithRoute r u ElectionsElectionQuery'{..}
          = go _eeqQuotaUser (Just _eeqPrettyPrint) _eeqUserIp
              _eeqKey
              _eeqOauthToken
              _eeqFields
              (Just _eeqAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ElectionsElectionQueryAPI)
                      r
                      u
