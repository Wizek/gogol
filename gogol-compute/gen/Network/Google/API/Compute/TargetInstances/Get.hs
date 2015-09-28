{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Compute.TargetInstances.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the specified TargetInstance resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetInstances.get@.
module Network.Google.API.Compute.TargetInstances.Get
    (
    -- * REST Resource
      TargetInstancesGetAPI

    -- * Creating a Request
    , targetInstancesGet'
    , TargetInstancesGet'

    -- * Request Lenses
    , tigQuotaUser
    , tigPrettyPrint
    , tigProject
    , tigTargetInstance
    , tigUserIp
    , tigZone
    , tigKey
    , tigOauthToken
    , tigFields
    , tigAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for compute.targetInstances.get which the
-- 'TargetInstancesGet'' request conforms to.
type TargetInstancesGetAPI =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "targetInstances" :>
             Capture "targetInstance" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Get '[JSON] TargetInstance

-- | Returns the specified TargetInstance resource.
--
-- /See:/ 'targetInstancesGet'' smart constructor.
data TargetInstancesGet' = TargetInstancesGet'
    { _tigQuotaUser      :: !(Maybe Text)
    , _tigPrettyPrint    :: !Bool
    , _tigProject        :: !Text
    , _tigTargetInstance :: !Text
    , _tigUserIp         :: !(Maybe Text)
    , _tigZone           :: !Text
    , _tigKey            :: !(Maybe Text)
    , _tigOauthToken     :: !(Maybe Text)
    , _tigFields         :: !(Maybe Text)
    , _tigAlt            :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetInstancesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tigQuotaUser'
--
-- * 'tigPrettyPrint'
--
-- * 'tigProject'
--
-- * 'tigTargetInstance'
--
-- * 'tigUserIp'
--
-- * 'tigZone'
--
-- * 'tigKey'
--
-- * 'tigOauthToken'
--
-- * 'tigFields'
--
-- * 'tigAlt'
targetInstancesGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'targetInstance'
    -> Text -- ^ 'zone'
    -> TargetInstancesGet'
targetInstancesGet' pTigProject_ pTigTargetInstance_ pTigZone_ =
    TargetInstancesGet'
    { _tigQuotaUser = Nothing
    , _tigPrettyPrint = True
    , _tigProject = pTigProject_
    , _tigTargetInstance = pTigTargetInstance_
    , _tigUserIp = Nothing
    , _tigZone = pTigZone_
    , _tigKey = Nothing
    , _tigOauthToken = Nothing
    , _tigFields = Nothing
    , _tigAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tigQuotaUser :: Lens' TargetInstancesGet' (Maybe Text)
tigQuotaUser
  = lens _tigQuotaUser (\ s a -> s{_tigQuotaUser = a})

-- | Returns response with indentations and line breaks.
tigPrettyPrint :: Lens' TargetInstancesGet' Bool
tigPrettyPrint
  = lens _tigPrettyPrint
      (\ s a -> s{_tigPrettyPrint = a})

-- | Name of the project scoping this request.
tigProject :: Lens' TargetInstancesGet' Text
tigProject
  = lens _tigProject (\ s a -> s{_tigProject = a})

-- | Name of the TargetInstance resource to return.
tigTargetInstance :: Lens' TargetInstancesGet' Text
tigTargetInstance
  = lens _tigTargetInstance
      (\ s a -> s{_tigTargetInstance = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tigUserIp :: Lens' TargetInstancesGet' (Maybe Text)
tigUserIp
  = lens _tigUserIp (\ s a -> s{_tigUserIp = a})

-- | Name of the zone scoping this request.
tigZone :: Lens' TargetInstancesGet' Text
tigZone = lens _tigZone (\ s a -> s{_tigZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tigKey :: Lens' TargetInstancesGet' (Maybe Text)
tigKey = lens _tigKey (\ s a -> s{_tigKey = a})

-- | OAuth 2.0 token for the current user.
tigOauthToken :: Lens' TargetInstancesGet' (Maybe Text)
tigOauthToken
  = lens _tigOauthToken
      (\ s a -> s{_tigOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tigFields :: Lens' TargetInstancesGet' (Maybe Text)
tigFields
  = lens _tigFields (\ s a -> s{_tigFields = a})

-- | Data format for the response.
tigAlt :: Lens' TargetInstancesGet' Alt
tigAlt = lens _tigAlt (\ s a -> s{_tigAlt = a})

instance GoogleRequest TargetInstancesGet' where
        type Rs TargetInstancesGet' = TargetInstance
        request = requestWithRoute defReq computeURL
        requestWithRoute r u TargetInstancesGet'{..}
          = go _tigQuotaUser (Just _tigPrettyPrint) _tigProject
              _tigTargetInstance
              _tigUserIp
              _tigZone
              _tigKey
              _tigOauthToken
              _tigFields
              (Just _tigAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TargetInstancesGetAPI)
                      r
                      u
