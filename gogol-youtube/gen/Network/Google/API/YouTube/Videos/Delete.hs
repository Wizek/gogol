{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.YouTube.Videos.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a YouTube video.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.videos.delete@.
module Network.Google.API.YouTube.Videos.Delete
    (
    -- * REST Resource
      VideosDeleteAPI

    -- * Creating a Request
    , videosDelete'
    , VideosDelete'

    -- * Request Lenses
    , vdQuotaUser
    , vdPrettyPrint
    , vdUserIp
    , vdOnBehalfOfContentOwner
    , vdKey
    , vdId
    , vdOauthToken
    , vdFields
    , vdAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for youtube.videos.delete which the
-- 'VideosDelete'' request conforms to.
type VideosDeleteAPI =
     "videos" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "onBehalfOfContentOwner" Text :>
               QueryParam "key" Text :>
                 QueryParam "id" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes a YouTube video.
--
-- /See:/ 'videosDelete'' smart constructor.
data VideosDelete' = VideosDelete'
    { _vdQuotaUser              :: !(Maybe Text)
    , _vdPrettyPrint            :: !Bool
    , _vdUserIp                 :: !(Maybe Text)
    , _vdOnBehalfOfContentOwner :: !(Maybe Text)
    , _vdKey                    :: !(Maybe Text)
    , _vdId                     :: !Text
    , _vdOauthToken             :: !(Maybe Text)
    , _vdFields                 :: !(Maybe Text)
    , _vdAlt                    :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideosDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vdQuotaUser'
--
-- * 'vdPrettyPrint'
--
-- * 'vdUserIp'
--
-- * 'vdOnBehalfOfContentOwner'
--
-- * 'vdKey'
--
-- * 'vdId'
--
-- * 'vdOauthToken'
--
-- * 'vdFields'
--
-- * 'vdAlt'
videosDelete'
    :: Text -- ^ 'id'
    -> VideosDelete'
videosDelete' pVdId_ =
    VideosDelete'
    { _vdQuotaUser = Nothing
    , _vdPrettyPrint = True
    , _vdUserIp = Nothing
    , _vdOnBehalfOfContentOwner = Nothing
    , _vdKey = Nothing
    , _vdId = pVdId_
    , _vdOauthToken = Nothing
    , _vdFields = Nothing
    , _vdAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
vdQuotaUser :: Lens' VideosDelete' (Maybe Text)
vdQuotaUser
  = lens _vdQuotaUser (\ s a -> s{_vdQuotaUser = a})

-- | Returns response with indentations and line breaks.
vdPrettyPrint :: Lens' VideosDelete' Bool
vdPrettyPrint
  = lens _vdPrettyPrint
      (\ s a -> s{_vdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
vdUserIp :: Lens' VideosDelete' (Maybe Text)
vdUserIp = lens _vdUserIp (\ s a -> s{_vdUserIp = a})

-- | Note: This parameter is intended exclusively for YouTube content
-- partners. The onBehalfOfContentOwner parameter indicates that the
-- request\'s authorization credentials identify a YouTube CMS user who is
-- acting on behalf of the content owner specified in the parameter value.
-- This parameter is intended for YouTube content partners that own and
-- manage many different YouTube channels. It allows content owners to
-- authenticate once and get access to all their video and channel data,
-- without having to provide authentication credentials for each individual
-- channel. The actual CMS account that the user authenticates with must be
-- linked to the specified YouTube content owner.
vdOnBehalfOfContentOwner :: Lens' VideosDelete' (Maybe Text)
vdOnBehalfOfContentOwner
  = lens _vdOnBehalfOfContentOwner
      (\ s a -> s{_vdOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vdKey :: Lens' VideosDelete' (Maybe Text)
vdKey = lens _vdKey (\ s a -> s{_vdKey = a})

-- | The id parameter specifies the YouTube video ID for the resource that is
-- being deleted. In a video resource, the id property specifies the
-- video\'s ID.
vdId :: Lens' VideosDelete' Text
vdId = lens _vdId (\ s a -> s{_vdId = a})

-- | OAuth 2.0 token for the current user.
vdOauthToken :: Lens' VideosDelete' (Maybe Text)
vdOauthToken
  = lens _vdOauthToken (\ s a -> s{_vdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
vdFields :: Lens' VideosDelete' (Maybe Text)
vdFields = lens _vdFields (\ s a -> s{_vdFields = a})

-- | Data format for the response.
vdAlt :: Lens' VideosDelete' Alt
vdAlt = lens _vdAlt (\ s a -> s{_vdAlt = a})

instance GoogleRequest VideosDelete' where
        type Rs VideosDelete' = ()
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u VideosDelete'{..}
          = go _vdQuotaUser (Just _vdPrettyPrint) _vdUserIp
              _vdOnBehalfOfContentOwner
              _vdKey
              (Just _vdId)
              _vdOauthToken
              _vdFields
              (Just _vdAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy VideosDeleteAPI) r
                      u
