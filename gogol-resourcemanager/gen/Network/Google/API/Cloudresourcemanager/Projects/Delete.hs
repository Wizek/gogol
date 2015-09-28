{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Cloudresourcemanager.Projects.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Marks the project identified by the specified \`project_id\` (for
-- example, \`my-project-123\`) for deletion. This method will only affect
-- the project if the following criteria are met: + The project does not
-- have a billing account associated with it. + The project has a lifecycle
-- state of
-- [ACTIVE][google.cloudresourcemanager.projects.v1beta1.LifecycleState.ACTIVE].
-- This method changes the project\'s lifecycle state from
-- [ACTIVE][google.cloudresourcemanager.projects.v1beta1.LifecycleState.ACTIVE]
-- to [DELETE_REQUESTED]
-- [google.cloudresourcemanager.projects.v1beta1.LifecycleState.DELETE_REQUESTED].
-- The deletion starts at an unspecified time, at which point the lifecycle
-- state changes to [DELETE_IN_PROGRESS]
-- [google.cloudresourcemanager.projects.v1beta1.LifecycleState.DELETE_IN_PROGRESS].
-- Until the deletion completes, you can check the lifecycle state checked
-- by retrieving the project with [GetProject]
-- [google.cloudresourcemanager.projects.v1beta1.DeveloperProjects.GetProject],
-- and the project remains visible to [ListProjects]
-- [google.cloudresourcemanager.projects.v1beta1.DeveloperProjects.ListProjects].
-- However, you cannot update the project. After the deletion completes,
-- the project is not retrievable by the [GetProject]
-- [google.cloudresourcemanager.projects.v1beta1.DeveloperProjects.GetProject]
-- and [ListProjects]
-- [google.cloudresourcemanager.projects.v1beta1.DeveloperProjects.ListProjects]
-- methods. The caller must have modify permissions for this project.
--
-- /See:/ <https://cloud.google.com/resource-manager Google Cloud Resource Manager API Reference> for @cloudresourcemanager.projects.delete@.
module Network.Google.API.Cloudresourcemanager.Projects.Delete
    (
    -- * REST Resource
      ProjectsDeleteAPI

    -- * Creating a Request
    , projectsDelete'
    , ProjectsDelete'

    -- * Request Lenses
    , pdXgafv
    , pdQuotaUser
    , pdPrettyPrint
    , pdUploadProtocol
    , pdPp
    , pdAccessToken
    , pdUploadType
    , pdBearerToken
    , pdKey
    , pdProjectId
    , pdOauthToken
    , pdFields
    , pdCallback
    , pdAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceManager.Types

-- | A resource alias for cloudresourcemanager.projects.delete which the
-- 'ProjectsDelete'' request conforms to.
type ProjectsDeleteAPI =
     "v1beta1" :>
       "projects" :>
         Capture "projectId" Text :>
           QueryParam "$.xgafv" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "pp" Bool :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "bearer_token" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" Text :> Delete '[JSON] Empty

-- | Marks the project identified by the specified \`project_id\` (for
-- example, \`my-project-123\`) for deletion. This method will only affect
-- the project if the following criteria are met: + The project does not
-- have a billing account associated with it. + The project has a lifecycle
-- state of
-- [ACTIVE][google.cloudresourcemanager.projects.v1beta1.LifecycleState.ACTIVE].
-- This method changes the project\'s lifecycle state from
-- [ACTIVE][google.cloudresourcemanager.projects.v1beta1.LifecycleState.ACTIVE]
-- to [DELETE_REQUESTED]
-- [google.cloudresourcemanager.projects.v1beta1.LifecycleState.DELETE_REQUESTED].
-- The deletion starts at an unspecified time, at which point the lifecycle
-- state changes to [DELETE_IN_PROGRESS]
-- [google.cloudresourcemanager.projects.v1beta1.LifecycleState.DELETE_IN_PROGRESS].
-- Until the deletion completes, you can check the lifecycle state checked
-- by retrieving the project with [GetProject]
-- [google.cloudresourcemanager.projects.v1beta1.DeveloperProjects.GetProject],
-- and the project remains visible to [ListProjects]
-- [google.cloudresourcemanager.projects.v1beta1.DeveloperProjects.ListProjects].
-- However, you cannot update the project. After the deletion completes,
-- the project is not retrievable by the [GetProject]
-- [google.cloudresourcemanager.projects.v1beta1.DeveloperProjects.GetProject]
-- and [ListProjects]
-- [google.cloudresourcemanager.projects.v1beta1.DeveloperProjects.ListProjects]
-- methods. The caller must have modify permissions for this project.
--
-- /See:/ 'projectsDelete'' smart constructor.
data ProjectsDelete' = ProjectsDelete'
    { _pdXgafv          :: !(Maybe Text)
    , _pdQuotaUser      :: !(Maybe Text)
    , _pdPrettyPrint    :: !Bool
    , _pdUploadProtocol :: !(Maybe Text)
    , _pdPp             :: !Bool
    , _pdAccessToken    :: !(Maybe Text)
    , _pdUploadType     :: !(Maybe Text)
    , _pdBearerToken    :: !(Maybe Text)
    , _pdKey            :: !(Maybe Text)
    , _pdProjectId      :: !Text
    , _pdOauthToken     :: !(Maybe Text)
    , _pdFields         :: !(Maybe Text)
    , _pdCallback       :: !(Maybe Text)
    , _pdAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdXgafv'
--
-- * 'pdQuotaUser'
--
-- * 'pdPrettyPrint'
--
-- * 'pdUploadProtocol'
--
-- * 'pdPp'
--
-- * 'pdAccessToken'
--
-- * 'pdUploadType'
--
-- * 'pdBearerToken'
--
-- * 'pdKey'
--
-- * 'pdProjectId'
--
-- * 'pdOauthToken'
--
-- * 'pdFields'
--
-- * 'pdCallback'
--
-- * 'pdAlt'
projectsDelete'
    :: Text -- ^ 'projectId'
    -> ProjectsDelete'
projectsDelete' pPdProjectId_ =
    ProjectsDelete'
    { _pdXgafv = Nothing
    , _pdQuotaUser = Nothing
    , _pdPrettyPrint = True
    , _pdUploadProtocol = Nothing
    , _pdPp = True
    , _pdAccessToken = Nothing
    , _pdUploadType = Nothing
    , _pdBearerToken = Nothing
    , _pdKey = Nothing
    , _pdProjectId = pPdProjectId_
    , _pdOauthToken = Nothing
    , _pdFields = Nothing
    , _pdCallback = Nothing
    , _pdAlt = "json"
    }

-- | V1 error format.
pdXgafv :: Lens' ProjectsDelete' (Maybe Text)
pdXgafv = lens _pdXgafv (\ s a -> s{_pdXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
pdQuotaUser :: Lens' ProjectsDelete' (Maybe Text)
pdQuotaUser
  = lens _pdQuotaUser (\ s a -> s{_pdQuotaUser = a})

-- | Returns response with indentations and line breaks.
pdPrettyPrint :: Lens' ProjectsDelete' Bool
pdPrettyPrint
  = lens _pdPrettyPrint
      (\ s a -> s{_pdPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pdUploadProtocol :: Lens' ProjectsDelete' (Maybe Text)
pdUploadProtocol
  = lens _pdUploadProtocol
      (\ s a -> s{_pdUploadProtocol = a})

-- | Pretty-print response.
pdPp :: Lens' ProjectsDelete' Bool
pdPp = lens _pdPp (\ s a -> s{_pdPp = a})

-- | OAuth access token.
pdAccessToken :: Lens' ProjectsDelete' (Maybe Text)
pdAccessToken
  = lens _pdAccessToken
      (\ s a -> s{_pdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pdUploadType :: Lens' ProjectsDelete' (Maybe Text)
pdUploadType
  = lens _pdUploadType (\ s a -> s{_pdUploadType = a})

-- | OAuth bearer token.
pdBearerToken :: Lens' ProjectsDelete' (Maybe Text)
pdBearerToken
  = lens _pdBearerToken
      (\ s a -> s{_pdBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pdKey :: Lens' ProjectsDelete' (Maybe Text)
pdKey = lens _pdKey (\ s a -> s{_pdKey = a})

-- | The project ID (for example, \`foo-bar-123\`). Required.
pdProjectId :: Lens' ProjectsDelete' Text
pdProjectId
  = lens _pdProjectId (\ s a -> s{_pdProjectId = a})

-- | OAuth 2.0 token for the current user.
pdOauthToken :: Lens' ProjectsDelete' (Maybe Text)
pdOauthToken
  = lens _pdOauthToken (\ s a -> s{_pdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pdFields :: Lens' ProjectsDelete' (Maybe Text)
pdFields = lens _pdFields (\ s a -> s{_pdFields = a})

-- | JSONP
pdCallback :: Lens' ProjectsDelete' (Maybe Text)
pdCallback
  = lens _pdCallback (\ s a -> s{_pdCallback = a})

-- | Data format for response.
pdAlt :: Lens' ProjectsDelete' Text
pdAlt = lens _pdAlt (\ s a -> s{_pdAlt = a})

instance GoogleRequest ProjectsDelete' where
        type Rs ProjectsDelete' = Empty
        request = requestWithRoute defReq resourceManagerURL
        requestWithRoute r u ProjectsDelete'{..}
          = go _pdXgafv _pdQuotaUser (Just _pdPrettyPrint)
              _pdUploadProtocol
              (Just _pdPp)
              _pdAccessToken
              _pdUploadType
              _pdBearerToken
              _pdKey
              _pdProjectId
              _pdOauthToken
              _pdFields
              _pdCallback
              (Just _pdAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy ProjectsDeleteAPI)
                      r
                      u
