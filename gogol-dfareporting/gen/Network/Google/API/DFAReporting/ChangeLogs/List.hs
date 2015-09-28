{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.ChangeLogs.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of change logs.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.changeLogs.list@.
module Network.Google.API.DFAReporting.ChangeLogs.List
    (
    -- * REST Resource
      ChangeLogsListAPI

    -- * Creating a Request
    , changeLogsList'
    , ChangeLogsList'

    -- * Request Lenses
    , cllUserProfileIds
    , cllQuotaUser
    , cllPrettyPrint
    , cllObjectType
    , cllUserIp
    , cllSearchString
    , cllIds
    , cllProfileId
    , cllAction
    , cllMinChangeTime
    , cllKey
    , cllMaxChangeTime
    , cllPageToken
    , cllOauthToken
    , cllObjectIds
    , cllMaxResults
    , cllFields
    , cllAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.changeLogs.list which the
-- 'ChangeLogsList'' request conforms to.
type ChangeLogsListAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "changeLogs" :>
           QueryParam "userProfileIds" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "objectType" ChangeLogsList'ObjectType :>
                   QueryParam "userIp" Text :>
                     QueryParam "searchString" Text :>
                       QueryParam "ids" Int64 :>
                         QueryParam "action" ChangeLogsList'Action :>
                           QueryParam "minChangeTime" Text :>
                             QueryParam "key" Text :>
                               QueryParam "maxChangeTime" Text :>
                                 QueryParam "pageToken" Text :>
                                   QueryParam "oauth_token" Text :>
                                     QueryParam "objectIds" Int64 :>
                                       QueryParam "maxResults" Int32 :>
                                         QueryParam "fields" Text :>
                                           QueryParam "alt" Alt :>
                                             Get '[JSON] ChangeLogsListResponse

-- | Retrieves a list of change logs.
--
-- /See:/ 'changeLogsList'' smart constructor.
data ChangeLogsList' = ChangeLogsList'
    { _cllUserProfileIds :: !(Maybe Int64)
    , _cllQuotaUser      :: !(Maybe Text)
    , _cllPrettyPrint    :: !Bool
    , _cllObjectType     :: !(Maybe ChangeLogsList'ObjectType)
    , _cllUserIp         :: !(Maybe Text)
    , _cllSearchString   :: !(Maybe Text)
    , _cllIds            :: !(Maybe Int64)
    , _cllProfileId      :: !Int64
    , _cllAction         :: !(Maybe ChangeLogsList'Action)
    , _cllMinChangeTime  :: !(Maybe Text)
    , _cllKey            :: !(Maybe Text)
    , _cllMaxChangeTime  :: !(Maybe Text)
    , _cllPageToken      :: !(Maybe Text)
    , _cllOauthToken     :: !(Maybe Text)
    , _cllObjectIds      :: !(Maybe Int64)
    , _cllMaxResults     :: !(Maybe Int32)
    , _cllFields         :: !(Maybe Text)
    , _cllAlt            :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChangeLogsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cllUserProfileIds'
--
-- * 'cllQuotaUser'
--
-- * 'cllPrettyPrint'
--
-- * 'cllObjectType'
--
-- * 'cllUserIp'
--
-- * 'cllSearchString'
--
-- * 'cllIds'
--
-- * 'cllProfileId'
--
-- * 'cllAction'
--
-- * 'cllMinChangeTime'
--
-- * 'cllKey'
--
-- * 'cllMaxChangeTime'
--
-- * 'cllPageToken'
--
-- * 'cllOauthToken'
--
-- * 'cllObjectIds'
--
-- * 'cllMaxResults'
--
-- * 'cllFields'
--
-- * 'cllAlt'
changeLogsList'
    :: Int64 -- ^ 'profileId'
    -> ChangeLogsList'
changeLogsList' pCllProfileId_ =
    ChangeLogsList'
    { _cllUserProfileIds = Nothing
    , _cllQuotaUser = Nothing
    , _cllPrettyPrint = True
    , _cllObjectType = Nothing
    , _cllUserIp = Nothing
    , _cllSearchString = Nothing
    , _cllIds = Nothing
    , _cllProfileId = pCllProfileId_
    , _cllAction = Nothing
    , _cllMinChangeTime = Nothing
    , _cllKey = Nothing
    , _cllMaxChangeTime = Nothing
    , _cllPageToken = Nothing
    , _cllOauthToken = Nothing
    , _cllObjectIds = Nothing
    , _cllMaxResults = Nothing
    , _cllFields = Nothing
    , _cllAlt = JSON
    }

-- | Select only change logs with these user profile IDs.
cllUserProfileIds :: Lens' ChangeLogsList' (Maybe Int64)
cllUserProfileIds
  = lens _cllUserProfileIds
      (\ s a -> s{_cllUserProfileIds = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cllQuotaUser :: Lens' ChangeLogsList' (Maybe Text)
cllQuotaUser
  = lens _cllQuotaUser (\ s a -> s{_cllQuotaUser = a})

-- | Returns response with indentations and line breaks.
cllPrettyPrint :: Lens' ChangeLogsList' Bool
cllPrettyPrint
  = lens _cllPrettyPrint
      (\ s a -> s{_cllPrettyPrint = a})

-- | Select only change logs with the specified object type.
cllObjectType :: Lens' ChangeLogsList' (Maybe ChangeLogsList'ObjectType)
cllObjectType
  = lens _cllObjectType
      (\ s a -> s{_cllObjectType = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cllUserIp :: Lens' ChangeLogsList' (Maybe Text)
cllUserIp
  = lens _cllUserIp (\ s a -> s{_cllUserIp = a})

-- | Select only change logs whose object ID, user name, old or new values
-- match the search string.
cllSearchString :: Lens' ChangeLogsList' (Maybe Text)
cllSearchString
  = lens _cllSearchString
      (\ s a -> s{_cllSearchString = a})

-- | Select only change logs with these IDs.
cllIds :: Lens' ChangeLogsList' (Maybe Int64)
cllIds = lens _cllIds (\ s a -> s{_cllIds = a})

-- | User profile ID associated with this request.
cllProfileId :: Lens' ChangeLogsList' Int64
cllProfileId
  = lens _cllProfileId (\ s a -> s{_cllProfileId = a})

-- | Select only change logs with the specified action.
cllAction :: Lens' ChangeLogsList' (Maybe ChangeLogsList'Action)
cllAction
  = lens _cllAction (\ s a -> s{_cllAction = a})

-- | Select only change logs whose change time is before the specified
-- minChangeTime.The time should be formatted as an RFC3339 date\/time
-- string. For example, for 10:54 PM on July 18th, 2015, in the
-- America\/New York time zone, the format is
-- \"2015-07-18T22:54:00-04:00\". In other words, the year, month, day, the
-- letter T, the hour (24-hour clock system), minute, second, and then the
-- time zone offset.
cllMinChangeTime :: Lens' ChangeLogsList' (Maybe Text)
cllMinChangeTime
  = lens _cllMinChangeTime
      (\ s a -> s{_cllMinChangeTime = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cllKey :: Lens' ChangeLogsList' (Maybe Text)
cllKey = lens _cllKey (\ s a -> s{_cllKey = a})

-- | Select only change logs whose change time is before the specified
-- maxChangeTime.The time should be formatted as an RFC3339 date\/time
-- string. For example, for 10:54 PM on July 18th, 2015, in the
-- America\/New York time zone, the format is
-- \"2015-07-18T22:54:00-04:00\". In other words, the year, month, day, the
-- letter T, the hour (24-hour clock system), minute, second, and then the
-- time zone offset.
cllMaxChangeTime :: Lens' ChangeLogsList' (Maybe Text)
cllMaxChangeTime
  = lens _cllMaxChangeTime
      (\ s a -> s{_cllMaxChangeTime = a})

-- | Value of the nextPageToken from the previous result page.
cllPageToken :: Lens' ChangeLogsList' (Maybe Text)
cllPageToken
  = lens _cllPageToken (\ s a -> s{_cllPageToken = a})

-- | OAuth 2.0 token for the current user.
cllOauthToken :: Lens' ChangeLogsList' (Maybe Text)
cllOauthToken
  = lens _cllOauthToken
      (\ s a -> s{_cllOauthToken = a})

-- | Select only change logs with these object IDs.
cllObjectIds :: Lens' ChangeLogsList' (Maybe Int64)
cllObjectIds
  = lens _cllObjectIds (\ s a -> s{_cllObjectIds = a})

-- | Maximum number of results to return.
cllMaxResults :: Lens' ChangeLogsList' (Maybe Int32)
cllMaxResults
  = lens _cllMaxResults
      (\ s a -> s{_cllMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
cllFields :: Lens' ChangeLogsList' (Maybe Text)
cllFields
  = lens _cllFields (\ s a -> s{_cllFields = a})

-- | Data format for the response.
cllAlt :: Lens' ChangeLogsList' Alt
cllAlt = lens _cllAlt (\ s a -> s{_cllAlt = a})

instance GoogleRequest ChangeLogsList' where
        type Rs ChangeLogsList' = ChangeLogsListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u ChangeLogsList'{..}
          = go _cllUserProfileIds _cllQuotaUser
              (Just _cllPrettyPrint)
              _cllObjectType
              _cllUserIp
              _cllSearchString
              _cllIds
              _cllProfileId
              _cllAction
              _cllMinChangeTime
              _cllKey
              _cllMaxChangeTime
              _cllPageToken
              _cllOauthToken
              _cllObjectIds
              _cllMaxResults
              _cllFields
              (Just _cllAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy ChangeLogsListAPI)
                      r
                      u
