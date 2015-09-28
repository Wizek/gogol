{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Classroom.Invitations.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a list of invitations that the requesting user is permitted to
-- view, restricted to those that match the list request. *Note:* At least
-- one of \`user_id\` or \`course_id\` must be supplied. Both fields can be
-- supplied. This method returns the following error codes: *
-- \`PERMISSION_DENIED\` for [general user permission errors][User
-- Permission Errors].
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.invitations.list@.
module Network.Google.API.Classroom.Invitations.List
    (
    -- * REST Resource
      InvitationsListAPI

    -- * Creating a Request
    , invitationsList'
    , InvitationsList'

    -- * Request Lenses
    , ilXgafv
    , ilQuotaUser
    , ilPrettyPrint
    , ilUploadProtocol
    , ilPp
    , ilCourseId
    , ilAccessToken
    , ilUploadType
    , ilUserId
    , ilBearerToken
    , ilKey
    , ilPageToken
    , ilOauthToken
    , ilPageSize
    , ilFields
    , ilCallback
    , ilAlt
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for classroom.invitations.list which the
-- 'InvitationsList'' request conforms to.
type InvitationsListAPI =
     "v1" :>
       "invitations" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "courseId" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "userId" Text :>
                           QueryParam "bearer_token" Text :>
                             QueryParam "key" Text :>
                               QueryParam "pageToken" Text :>
                                 QueryParam "oauth_token" Text :>
                                   QueryParam "pageSize" Int32 :>
                                     QueryParam "fields" Text :>
                                       QueryParam "callback" Text :>
                                         QueryParam "alt" Text :>
                                           Get '[JSON] ListInvitationsResponse

-- | Returns a list of invitations that the requesting user is permitted to
-- view, restricted to those that match the list request. *Note:* At least
-- one of \`user_id\` or \`course_id\` must be supplied. Both fields can be
-- supplied. This method returns the following error codes: *
-- \`PERMISSION_DENIED\` for [general user permission errors][User
-- Permission Errors].
--
-- /See:/ 'invitationsList'' smart constructor.
data InvitationsList' = InvitationsList'
    { _ilXgafv          :: !(Maybe Text)
    , _ilQuotaUser      :: !(Maybe Text)
    , _ilPrettyPrint    :: !Bool
    , _ilUploadProtocol :: !(Maybe Text)
    , _ilPp             :: !Bool
    , _ilCourseId       :: !(Maybe Text)
    , _ilAccessToken    :: !(Maybe Text)
    , _ilUploadType     :: !(Maybe Text)
    , _ilUserId         :: !(Maybe Text)
    , _ilBearerToken    :: !(Maybe Text)
    , _ilKey            :: !(Maybe Text)
    , _ilPageToken      :: !(Maybe Text)
    , _ilOauthToken     :: !(Maybe Text)
    , _ilPageSize       :: !(Maybe Int32)
    , _ilFields         :: !(Maybe Text)
    , _ilCallback       :: !(Maybe Text)
    , _ilAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InvitationsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ilXgafv'
--
-- * 'ilQuotaUser'
--
-- * 'ilPrettyPrint'
--
-- * 'ilUploadProtocol'
--
-- * 'ilPp'
--
-- * 'ilCourseId'
--
-- * 'ilAccessToken'
--
-- * 'ilUploadType'
--
-- * 'ilUserId'
--
-- * 'ilBearerToken'
--
-- * 'ilKey'
--
-- * 'ilPageToken'
--
-- * 'ilOauthToken'
--
-- * 'ilPageSize'
--
-- * 'ilFields'
--
-- * 'ilCallback'
--
-- * 'ilAlt'
invitationsList'
    :: InvitationsList'
invitationsList' =
    InvitationsList'
    { _ilXgafv = Nothing
    , _ilQuotaUser = Nothing
    , _ilPrettyPrint = True
    , _ilUploadProtocol = Nothing
    , _ilPp = True
    , _ilCourseId = Nothing
    , _ilAccessToken = Nothing
    , _ilUploadType = Nothing
    , _ilUserId = Nothing
    , _ilBearerToken = Nothing
    , _ilKey = Nothing
    , _ilPageToken = Nothing
    , _ilOauthToken = Nothing
    , _ilPageSize = Nothing
    , _ilFields = Nothing
    , _ilCallback = Nothing
    , _ilAlt = "json"
    }

-- | V1 error format.
ilXgafv :: Lens' InvitationsList' (Maybe Text)
ilXgafv = lens _ilXgafv (\ s a -> s{_ilXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
ilQuotaUser :: Lens' InvitationsList' (Maybe Text)
ilQuotaUser
  = lens _ilQuotaUser (\ s a -> s{_ilQuotaUser = a})

-- | Returns response with indentations and line breaks.
ilPrettyPrint :: Lens' InvitationsList' Bool
ilPrettyPrint
  = lens _ilPrettyPrint
      (\ s a -> s{_ilPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ilUploadProtocol :: Lens' InvitationsList' (Maybe Text)
ilUploadProtocol
  = lens _ilUploadProtocol
      (\ s a -> s{_ilUploadProtocol = a})

-- | Pretty-print response.
ilPp :: Lens' InvitationsList' Bool
ilPp = lens _ilPp (\ s a -> s{_ilPp = a})

-- | Restricts returned invitations to those for a course with the specified
-- identifier.
ilCourseId :: Lens' InvitationsList' (Maybe Text)
ilCourseId
  = lens _ilCourseId (\ s a -> s{_ilCourseId = a})

-- | OAuth access token.
ilAccessToken :: Lens' InvitationsList' (Maybe Text)
ilAccessToken
  = lens _ilAccessToken
      (\ s a -> s{_ilAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ilUploadType :: Lens' InvitationsList' (Maybe Text)
ilUploadType
  = lens _ilUploadType (\ s a -> s{_ilUploadType = a})

-- | Restricts returned invitations to those for a specific user. The
-- identifier can be one of the following: * the numeric identifier for the
-- user * the email address of the user * the string literal \`\"me\"\`,
-- indicating the requesting user
ilUserId :: Lens' InvitationsList' (Maybe Text)
ilUserId = lens _ilUserId (\ s a -> s{_ilUserId = a})

-- | OAuth bearer token.
ilBearerToken :: Lens' InvitationsList' (Maybe Text)
ilBearerToken
  = lens _ilBearerToken
      (\ s a -> s{_ilBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ilKey :: Lens' InvitationsList' (Maybe Text)
ilKey = lens _ilKey (\ s a -> s{_ilKey = a})

-- | [nextPageToken][google.classroom.v1.ListInvitationsResponse.next_page_token]
-- value returned from a previous
-- [list][google.classroom.v1.Invitations.ListInvitations] call, indicating
-- that the subsequent page of results should be returned. The
-- [list][google.classroom.v1.Invitations.ListInvitations] request must be
-- otherwise identical to the one that resulted in this token.
ilPageToken :: Lens' InvitationsList' (Maybe Text)
ilPageToken
  = lens _ilPageToken (\ s a -> s{_ilPageToken = a})

-- | OAuth 2.0 token for the current user.
ilOauthToken :: Lens' InvitationsList' (Maybe Text)
ilOauthToken
  = lens _ilOauthToken (\ s a -> s{_ilOauthToken = a})

-- | Maximum number of items to return. Zero means no maximum. The server may
-- return fewer than the specified number of results.
ilPageSize :: Lens' InvitationsList' (Maybe Int32)
ilPageSize
  = lens _ilPageSize (\ s a -> s{_ilPageSize = a})

-- | Selector specifying which fields to include in a partial response.
ilFields :: Lens' InvitationsList' (Maybe Text)
ilFields = lens _ilFields (\ s a -> s{_ilFields = a})

-- | JSONP
ilCallback :: Lens' InvitationsList' (Maybe Text)
ilCallback
  = lens _ilCallback (\ s a -> s{_ilCallback = a})

-- | Data format for response.
ilAlt :: Lens' InvitationsList' Text
ilAlt = lens _ilAlt (\ s a -> s{_ilAlt = a})

instance GoogleRequest InvitationsList' where
        type Rs InvitationsList' = ListInvitationsResponse
        request = requestWithRoute defReq classroomURL
        requestWithRoute r u InvitationsList'{..}
          = go _ilXgafv _ilQuotaUser (Just _ilPrettyPrint)
              _ilUploadProtocol
              (Just _ilPp)
              _ilCourseId
              _ilAccessToken
              _ilUploadType
              _ilUserId
              _ilBearerToken
              _ilKey
              _ilPageToken
              _ilOauthToken
              _ilPageSize
              _ilFields
              _ilCallback
              (Just _ilAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy InvitationsListAPI)
                      r
                      u
