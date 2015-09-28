{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.TagManager.Accounts.Containers.Triggers.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a GTM Trigger.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @tagmanager.accounts.containers.triggers.get@.
module Network.Google.API.TagManager.Accounts.Containers.Triggers.Get
    (
    -- * REST Resource
      AccountsContainersTriggersGetAPI

    -- * Creating a Request
    , accountsContainersTriggersGet'
    , AccountsContainersTriggersGet'

    -- * Request Lenses
    , accQuotaUser
    , accPrettyPrint
    , accContainerId
    , accTriggerId
    , accUserIp
    , accAccountId
    , accKey
    , accOauthToken
    , accFields
    , accAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for tagmanager.accounts.containers.triggers.get which the
-- 'AccountsContainersTriggersGet'' request conforms to.
type AccountsContainersTriggersGetAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "triggers" :>
               Capture "triggerId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Get '[JSON] Trigger

-- | Gets a GTM Trigger.
--
-- /See:/ 'accountsContainersTriggersGet'' smart constructor.
data AccountsContainersTriggersGet' = AccountsContainersTriggersGet'
    { _accQuotaUser   :: !(Maybe Text)
    , _accPrettyPrint :: !Bool
    , _accContainerId :: !Text
    , _accTriggerId   :: !Text
    , _accUserIp      :: !(Maybe Text)
    , _accAccountId   :: !Text
    , _accKey         :: !(Maybe Text)
    , _accOauthToken  :: !(Maybe Text)
    , _accFields      :: !(Maybe Text)
    , _accAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersTriggersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'accQuotaUser'
--
-- * 'accPrettyPrint'
--
-- * 'accContainerId'
--
-- * 'accTriggerId'
--
-- * 'accUserIp'
--
-- * 'accAccountId'
--
-- * 'accKey'
--
-- * 'accOauthToken'
--
-- * 'accFields'
--
-- * 'accAlt'
accountsContainersTriggersGet'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'triggerId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersTriggersGet'
accountsContainersTriggersGet' pAccContainerId_ pAccTriggerId_ pAccAccountId_ =
    AccountsContainersTriggersGet'
    { _accQuotaUser = Nothing
    , _accPrettyPrint = True
    , _accContainerId = pAccContainerId_
    , _accTriggerId = pAccTriggerId_
    , _accUserIp = Nothing
    , _accAccountId = pAccAccountId_
    , _accKey = Nothing
    , _accOauthToken = Nothing
    , _accFields = Nothing
    , _accAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
accQuotaUser :: Lens' AccountsContainersTriggersGet' (Maybe Text)
accQuotaUser
  = lens _accQuotaUser (\ s a -> s{_accQuotaUser = a})

-- | Returns response with indentations and line breaks.
accPrettyPrint :: Lens' AccountsContainersTriggersGet' Bool
accPrettyPrint
  = lens _accPrettyPrint
      (\ s a -> s{_accPrettyPrint = a})

-- | The GTM Container ID.
accContainerId :: Lens' AccountsContainersTriggersGet' Text
accContainerId
  = lens _accContainerId
      (\ s a -> s{_accContainerId = a})

-- | The GTM Trigger ID.
accTriggerId :: Lens' AccountsContainersTriggersGet' Text
accTriggerId
  = lens _accTriggerId (\ s a -> s{_accTriggerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
accUserIp :: Lens' AccountsContainersTriggersGet' (Maybe Text)
accUserIp
  = lens _accUserIp (\ s a -> s{_accUserIp = a})

-- | The GTM Account ID.
accAccountId :: Lens' AccountsContainersTriggersGet' Text
accAccountId
  = lens _accAccountId (\ s a -> s{_accAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
accKey :: Lens' AccountsContainersTriggersGet' (Maybe Text)
accKey = lens _accKey (\ s a -> s{_accKey = a})

-- | OAuth 2.0 token for the current user.
accOauthToken :: Lens' AccountsContainersTriggersGet' (Maybe Text)
accOauthToken
  = lens _accOauthToken
      (\ s a -> s{_accOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
accFields :: Lens' AccountsContainersTriggersGet' (Maybe Text)
accFields
  = lens _accFields (\ s a -> s{_accFields = a})

-- | Data format for the response.
accAlt :: Lens' AccountsContainersTriggersGet' Alt
accAlt = lens _accAlt (\ s a -> s{_accAlt = a})

instance GoogleRequest AccountsContainersTriggersGet'
         where
        type Rs AccountsContainersTriggersGet' = Trigger
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersTriggersGet'{..}
          = go _accQuotaUser (Just _accPrettyPrint)
              _accContainerId
              _accTriggerId
              _accUserIp
              _accAccountId
              _accKey
              _accOauthToken
              _accFields
              (Just _accAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsContainersTriggersGetAPI)
                      r
                      u
