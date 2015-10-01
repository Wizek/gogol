{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Analytics.Management.ProfileUserLinks.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Removes a user from the given view (profile).
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementProfileUserLinksDelete@.
module Network.Google.Resource.Analytics.Management.ProfileUserLinks.Delete
    (
    -- * REST Resource
      ManagementProfileUserLinksDeleteResource

    -- * Creating a Request
    , managementProfileUserLinksDelete'
    , ManagementProfileUserLinksDelete'

    -- * Request Lenses
    , mpuldQuotaUser
    , mpuldPrettyPrint
    , mpuldWebPropertyId
    , mpuldUserIp
    , mpuldProfileId
    , mpuldAccountId
    , mpuldKey
    , mpuldLinkId
    , mpuldOauthToken
    , mpuldFields
    , mpuldAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementProfileUserLinksDelete@ which the
-- 'ManagementProfileUserLinksDelete'' request conforms to.
type ManagementProfileUserLinksDeleteResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "profiles" :>
                 Capture "profileId" Text :>
                   "entityUserLinks" :>
                     Capture "linkId" Text :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Removes a user from the given view (profile).
--
-- /See:/ 'managementProfileUserLinksDelete'' smart constructor.
data ManagementProfileUserLinksDelete' = ManagementProfileUserLinksDelete'
    { _mpuldQuotaUser     :: !(Maybe Text)
    , _mpuldPrettyPrint   :: !Bool
    , _mpuldWebPropertyId :: !Text
    , _mpuldUserIp        :: !(Maybe Text)
    , _mpuldProfileId     :: !Text
    , _mpuldAccountId     :: !Text
    , _mpuldKey           :: !(Maybe Text)
    , _mpuldLinkId        :: !Text
    , _mpuldOauthToken    :: !(Maybe Text)
    , _mpuldFields        :: !(Maybe Text)
    , _mpuldAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementProfileUserLinksDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpuldQuotaUser'
--
-- * 'mpuldPrettyPrint'
--
-- * 'mpuldWebPropertyId'
--
-- * 'mpuldUserIp'
--
-- * 'mpuldProfileId'
--
-- * 'mpuldAccountId'
--
-- * 'mpuldKey'
--
-- * 'mpuldLinkId'
--
-- * 'mpuldOauthToken'
--
-- * 'mpuldFields'
--
-- * 'mpuldAlt'
managementProfileUserLinksDelete'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'linkId'
    -> ManagementProfileUserLinksDelete'
managementProfileUserLinksDelete' pMpuldWebPropertyId_ pMpuldProfileId_ pMpuldAccountId_ pMpuldLinkId_ =
    ManagementProfileUserLinksDelete'
    { _mpuldQuotaUser = Nothing
    , _mpuldPrettyPrint = False
    , _mpuldWebPropertyId = pMpuldWebPropertyId_
    , _mpuldUserIp = Nothing
    , _mpuldProfileId = pMpuldProfileId_
    , _mpuldAccountId = pMpuldAccountId_
    , _mpuldKey = Nothing
    , _mpuldLinkId = pMpuldLinkId_
    , _mpuldOauthToken = Nothing
    , _mpuldFields = Nothing
    , _mpuldAlt = ALTJSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mpuldQuotaUser :: Lens' ManagementProfileUserLinksDelete' (Maybe Text)
mpuldQuotaUser
  = lens _mpuldQuotaUser
      (\ s a -> s{_mpuldQuotaUser = a})

-- | Returns response with indentations and line breaks.
mpuldPrettyPrint :: Lens' ManagementProfileUserLinksDelete' Bool
mpuldPrettyPrint
  = lens _mpuldPrettyPrint
      (\ s a -> s{_mpuldPrettyPrint = a})

-- | Web Property ID to delete the user link for.
mpuldWebPropertyId :: Lens' ManagementProfileUserLinksDelete' Text
mpuldWebPropertyId
  = lens _mpuldWebPropertyId
      (\ s a -> s{_mpuldWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mpuldUserIp :: Lens' ManagementProfileUserLinksDelete' (Maybe Text)
mpuldUserIp
  = lens _mpuldUserIp (\ s a -> s{_mpuldUserIp = a})

-- | View (Profile) ID to delete the user link for.
mpuldProfileId :: Lens' ManagementProfileUserLinksDelete' Text
mpuldProfileId
  = lens _mpuldProfileId
      (\ s a -> s{_mpuldProfileId = a})

-- | Account ID to delete the user link for.
mpuldAccountId :: Lens' ManagementProfileUserLinksDelete' Text
mpuldAccountId
  = lens _mpuldAccountId
      (\ s a -> s{_mpuldAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mpuldKey :: Lens' ManagementProfileUserLinksDelete' (Maybe Text)
mpuldKey = lens _mpuldKey (\ s a -> s{_mpuldKey = a})

-- | Link ID to delete the user link for.
mpuldLinkId :: Lens' ManagementProfileUserLinksDelete' Text
mpuldLinkId
  = lens _mpuldLinkId (\ s a -> s{_mpuldLinkId = a})

-- | OAuth 2.0 token for the current user.
mpuldOauthToken :: Lens' ManagementProfileUserLinksDelete' (Maybe Text)
mpuldOauthToken
  = lens _mpuldOauthToken
      (\ s a -> s{_mpuldOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mpuldFields :: Lens' ManagementProfileUserLinksDelete' (Maybe Text)
mpuldFields
  = lens _mpuldFields (\ s a -> s{_mpuldFields = a})

-- | Data format for the response.
mpuldAlt :: Lens' ManagementProfileUserLinksDelete' Alt
mpuldAlt = lens _mpuldAlt (\ s a -> s{_mpuldAlt = a})

instance GoogleRequest
         ManagementProfileUserLinksDelete' where
        type Rs ManagementProfileUserLinksDelete' = ()
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementProfileUserLinksDelete'{..}
          = go _mpuldQuotaUser (Just _mpuldPrettyPrint)
              _mpuldWebPropertyId
              _mpuldUserIp
              _mpuldProfileId
              _mpuldAccountId
              _mpuldKey
              _mpuldLinkId
              _mpuldOauthToken
              _mpuldFields
              (Just _mpuldAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ManagementProfileUserLinksDeleteResource)
                      r
                      u