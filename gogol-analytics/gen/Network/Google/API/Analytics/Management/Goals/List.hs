{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Analytics.Management.Goals.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists goals to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.goals.list@.
module Network.Google.API.Analytics.Management.Goals.List
    (
    -- * REST Resource
      ManagementGoalsListAPI

    -- * Creating a Request
    , managementGoalsList'
    , ManagementGoalsList'

    -- * Request Lenses
    , mglQuotaUser
    , mglPrettyPrint
    , mglWebPropertyId
    , mglUserIp
    , mglProfileId
    , mglAccountId
    , mglKey
    , mglOauthToken
    , mglStartIndex
    , mglMaxResults
    , mglFields
    , mglAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for analytics.management.goals.list which the
-- 'ManagementGoalsList'' request conforms to.
type ManagementGoalsListAPI =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "profiles" :>
                 Capture "profileId" Text :>
                   "goals" :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "start-index" Nat :>
                                 QueryParam "max-results" Int32 :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" Alt :> Get '[JSON] Goals

-- | Lists goals to which the user has access.
--
-- /See:/ 'managementGoalsList'' smart constructor.
data ManagementGoalsList' = ManagementGoalsList'
    { _mglQuotaUser     :: !(Maybe Text)
    , _mglPrettyPrint   :: !Bool
    , _mglWebPropertyId :: !Text
    , _mglUserIp        :: !(Maybe Text)
    , _mglProfileId     :: !Text
    , _mglAccountId     :: !Text
    , _mglKey           :: !(Maybe Text)
    , _mglOauthToken    :: !(Maybe Text)
    , _mglStartIndex    :: !(Maybe Nat)
    , _mglMaxResults    :: !(Maybe Int32)
    , _mglFields        :: !(Maybe Text)
    , _mglAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementGoalsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mglQuotaUser'
--
-- * 'mglPrettyPrint'
--
-- * 'mglWebPropertyId'
--
-- * 'mglUserIp'
--
-- * 'mglProfileId'
--
-- * 'mglAccountId'
--
-- * 'mglKey'
--
-- * 'mglOauthToken'
--
-- * 'mglStartIndex'
--
-- * 'mglMaxResults'
--
-- * 'mglFields'
--
-- * 'mglAlt'
managementGoalsList'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> Text -- ^ 'accountId'
    -> ManagementGoalsList'
managementGoalsList' pMglWebPropertyId_ pMglProfileId_ pMglAccountId_ =
    ManagementGoalsList'
    { _mglQuotaUser = Nothing
    , _mglPrettyPrint = False
    , _mglWebPropertyId = pMglWebPropertyId_
    , _mglUserIp = Nothing
    , _mglProfileId = pMglProfileId_
    , _mglAccountId = pMglAccountId_
    , _mglKey = Nothing
    , _mglOauthToken = Nothing
    , _mglStartIndex = Nothing
    , _mglMaxResults = Nothing
    , _mglFields = Nothing
    , _mglAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mglQuotaUser :: Lens' ManagementGoalsList' (Maybe Text)
mglQuotaUser
  = lens _mglQuotaUser (\ s a -> s{_mglQuotaUser = a})

-- | Returns response with indentations and line breaks.
mglPrettyPrint :: Lens' ManagementGoalsList' Bool
mglPrettyPrint
  = lens _mglPrettyPrint
      (\ s a -> s{_mglPrettyPrint = a})

-- | Web property ID to retrieve goals for. Can either be a specific web
-- property ID or \'~all\', which refers to all the web properties that
-- user has access to.
mglWebPropertyId :: Lens' ManagementGoalsList' Text
mglWebPropertyId
  = lens _mglWebPropertyId
      (\ s a -> s{_mglWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mglUserIp :: Lens' ManagementGoalsList' (Maybe Text)
mglUserIp
  = lens _mglUserIp (\ s a -> s{_mglUserIp = a})

-- | View (Profile) ID to retrieve goals for. Can either be a specific view
-- (profile) ID or \'~all\', which refers to all the views (profiles) that
-- user has access to.
mglProfileId :: Lens' ManagementGoalsList' Text
mglProfileId
  = lens _mglProfileId (\ s a -> s{_mglProfileId = a})

-- | Account ID to retrieve goals for. Can either be a specific account ID or
-- \'~all\', which refers to all the accounts that user has access to.
mglAccountId :: Lens' ManagementGoalsList' Text
mglAccountId
  = lens _mglAccountId (\ s a -> s{_mglAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mglKey :: Lens' ManagementGoalsList' (Maybe Text)
mglKey = lens _mglKey (\ s a -> s{_mglKey = a})

-- | OAuth 2.0 token for the current user.
mglOauthToken :: Lens' ManagementGoalsList' (Maybe Text)
mglOauthToken
  = lens _mglOauthToken
      (\ s a -> s{_mglOauthToken = a})

-- | An index of the first goal to retrieve. Use this parameter as a
-- pagination mechanism along with the max-results parameter.
mglStartIndex :: Lens' ManagementGoalsList' (Maybe Natural)
mglStartIndex
  = lens _mglStartIndex
      (\ s a -> s{_mglStartIndex = a})
      . mapping _Nat

-- | The maximum number of goals to include in this response.
mglMaxResults :: Lens' ManagementGoalsList' (Maybe Int32)
mglMaxResults
  = lens _mglMaxResults
      (\ s a -> s{_mglMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
mglFields :: Lens' ManagementGoalsList' (Maybe Text)
mglFields
  = lens _mglFields (\ s a -> s{_mglFields = a})

-- | Data format for the response.
mglAlt :: Lens' ManagementGoalsList' Alt
mglAlt = lens _mglAlt (\ s a -> s{_mglAlt = a})

instance GoogleRequest ManagementGoalsList' where
        type Rs ManagementGoalsList' = Goals
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u ManagementGoalsList'{..}
          = go _mglQuotaUser (Just _mglPrettyPrint)
              _mglWebPropertyId
              _mglUserIp
              _mglProfileId
              _mglAccountId
              _mglKey
              _mglOauthToken
              _mglStartIndex
              _mglMaxResults
              _mglFields
              (Just _mglAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementGoalsListAPI)
                      r
                      u