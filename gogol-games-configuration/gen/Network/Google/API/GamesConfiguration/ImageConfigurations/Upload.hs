{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.GamesConfiguration.ImageConfigurations.Upload
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Uploads an image for a resource with the given ID and image type.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Publishing API Reference> for @gamesConfiguration.imageConfigurations.upload@.
module Network.Google.API.GamesConfiguration.ImageConfigurations.Upload
    (
    -- * REST Resource
      ImageConfigurationsUploadAPI

    -- * Creating a Request
    , imageConfigurationsUpload'
    , ImageConfigurationsUpload'

    -- * Request Lenses
    , icuQuotaUser
    , icuResourceId
    , icuPrettyPrint
    , icuUserIp
    , icuImageType
    , icuKey
    , icuOauthToken
    , icuFields
    , icuAlt
    ) where

import           Network.Google.Games.Configuration.Types
import           Network.Google.Prelude

-- | A resource alias for gamesConfiguration.imageConfigurations.upload which the
-- 'ImageConfigurationsUpload'' request conforms to.
type ImageConfigurationsUploadAPI =
     "images" :>
       Capture "resourceId" Text :>
         "imageType" :>
           Capture "imageType"
             ImageConfigurationsUpload'ImageType
             :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :>
                           Post '[JSON] ImageConfiguration

-- | Uploads an image for a resource with the given ID and image type.
--
-- /See:/ 'imageConfigurationsUpload'' smart constructor.
data ImageConfigurationsUpload' = ImageConfigurationsUpload'
    { _icuQuotaUser   :: !(Maybe Text)
    , _icuResourceId  :: !Text
    , _icuPrettyPrint :: !Bool
    , _icuUserIp      :: !(Maybe Text)
    , _icuImageType   :: !ImageConfigurationsUpload'ImageType
    , _icuKey         :: !(Maybe Text)
    , _icuOauthToken  :: !(Maybe Text)
    , _icuFields      :: !(Maybe Text)
    , _icuAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImageConfigurationsUpload'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icuQuotaUser'
--
-- * 'icuResourceId'
--
-- * 'icuPrettyPrint'
--
-- * 'icuUserIp'
--
-- * 'icuImageType'
--
-- * 'icuKey'
--
-- * 'icuOauthToken'
--
-- * 'icuFields'
--
-- * 'icuAlt'
imageConfigurationsUpload'
    :: Text -- ^ 'resourceId'
    -> ImageConfigurationsUpload'ImageType -- ^ 'imageType'
    -> ImageConfigurationsUpload'
imageConfigurationsUpload' pIcuResourceId_ pIcuImageType_ =
    ImageConfigurationsUpload'
    { _icuQuotaUser = Nothing
    , _icuResourceId = pIcuResourceId_
    , _icuPrettyPrint = True
    , _icuUserIp = Nothing
    , _icuImageType = pIcuImageType_
    , _icuKey = Nothing
    , _icuOauthToken = Nothing
    , _icuFields = Nothing
    , _icuAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
icuQuotaUser :: Lens' ImageConfigurationsUpload' (Maybe Text)
icuQuotaUser
  = lens _icuQuotaUser (\ s a -> s{_icuQuotaUser = a})

-- | The ID of the resource used by this method.
icuResourceId :: Lens' ImageConfigurationsUpload' Text
icuResourceId
  = lens _icuResourceId
      (\ s a -> s{_icuResourceId = a})

-- | Returns response with indentations and line breaks.
icuPrettyPrint :: Lens' ImageConfigurationsUpload' Bool
icuPrettyPrint
  = lens _icuPrettyPrint
      (\ s a -> s{_icuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
icuUserIp :: Lens' ImageConfigurationsUpload' (Maybe Text)
icuUserIp
  = lens _icuUserIp (\ s a -> s{_icuUserIp = a})

-- | Selects which image in a resource for this method.
icuImageType :: Lens' ImageConfigurationsUpload' ImageConfigurationsUpload'ImageType
icuImageType
  = lens _icuImageType (\ s a -> s{_icuImageType = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
icuKey :: Lens' ImageConfigurationsUpload' (Maybe Text)
icuKey = lens _icuKey (\ s a -> s{_icuKey = a})

-- | OAuth 2.0 token for the current user.
icuOauthToken :: Lens' ImageConfigurationsUpload' (Maybe Text)
icuOauthToken
  = lens _icuOauthToken
      (\ s a -> s{_icuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
icuFields :: Lens' ImageConfigurationsUpload' (Maybe Text)
icuFields
  = lens _icuFields (\ s a -> s{_icuFields = a})

-- | Data format for the response.
icuAlt :: Lens' ImageConfigurationsUpload' Alt
icuAlt = lens _icuAlt (\ s a -> s{_icuAlt = a})

instance GoogleRequest ImageConfigurationsUpload'
         where
        type Rs ImageConfigurationsUpload' =
             ImageConfiguration
        request
          = requestWithRoute defReq gamesConfigurationURL
        requestWithRoute r u ImageConfigurationsUpload'{..}
          = go _icuQuotaUser _icuResourceId
              (Just _icuPrettyPrint)
              _icuUserIp
              _icuImageType
              _icuKey
              _icuOauthToken
              _icuFields
              (Just _icuAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ImageConfigurationsUploadAPI)
                      r
                      u
