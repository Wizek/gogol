{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.Orders.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of orders, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.orders.list@.
module Network.Google.API.DFAReporting.Orders.List
    (
    -- * REST Resource
      OrdersListAPI

    -- * Creating a Request
    , ordersList'
    , OrdersList'

    -- * Request Lenses
    , olQuotaUser
    , olPrettyPrint
    , olUserIp
    , olSearchString
    , olIds
    , olProfileId
    , olSortOrder
    , olKey
    , olPageToken
    , olProjectId
    , olSortField
    , olOauthToken
    , olSiteId
    , olMaxResults
    , olFields
    , olAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.orders.list which the
-- 'OrdersList'' request conforms to.
type OrdersListAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "projects" :>
           Capture "projectId" Int64 :>
             "orders" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "searchString" Text :>
                       QueryParam "ids" Int64 :>
                         QueryParam "sortOrder" OrdersList'SortOrder :>
                           QueryParam "key" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "sortField" OrdersList'SortField :>
                                 QueryParam "oauth_token" Text :>
                                   QueryParam "siteId" Int64 :>
                                     QueryParam "maxResults" Int32 :>
                                       QueryParam "fields" Text :>
                                         QueryParam "alt" Alt :>
                                           Get '[JSON] OrdersListResponse

-- | Retrieves a list of orders, possibly filtered.
--
-- /See:/ 'ordersList'' smart constructor.
data OrdersList' = OrdersList'
    { _olQuotaUser    :: !(Maybe Text)
    , _olPrettyPrint  :: !Bool
    , _olUserIp       :: !(Maybe Text)
    , _olSearchString :: !(Maybe Text)
    , _olIds          :: !(Maybe Int64)
    , _olProfileId    :: !Int64
    , _olSortOrder    :: !(Maybe OrdersList'SortOrder)
    , _olKey          :: !(Maybe Text)
    , _olPageToken    :: !(Maybe Text)
    , _olProjectId    :: !Int64
    , _olSortField    :: !(Maybe OrdersList'SortField)
    , _olOauthToken   :: !(Maybe Text)
    , _olSiteId       :: !(Maybe Int64)
    , _olMaxResults   :: !(Maybe Int32)
    , _olFields       :: !(Maybe Text)
    , _olAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olQuotaUser'
--
-- * 'olPrettyPrint'
--
-- * 'olUserIp'
--
-- * 'olSearchString'
--
-- * 'olIds'
--
-- * 'olProfileId'
--
-- * 'olSortOrder'
--
-- * 'olKey'
--
-- * 'olPageToken'
--
-- * 'olProjectId'
--
-- * 'olSortField'
--
-- * 'olOauthToken'
--
-- * 'olSiteId'
--
-- * 'olMaxResults'
--
-- * 'olFields'
--
-- * 'olAlt'
ordersList'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'projectId'
    -> OrdersList'
ordersList' pOlProfileId_ pOlProjectId_ =
    OrdersList'
    { _olQuotaUser = Nothing
    , _olPrettyPrint = True
    , _olUserIp = Nothing
    , _olSearchString = Nothing
    , _olIds = Nothing
    , _olProfileId = pOlProfileId_
    , _olSortOrder = Nothing
    , _olKey = Nothing
    , _olPageToken = Nothing
    , _olProjectId = pOlProjectId_
    , _olSortField = Nothing
    , _olOauthToken = Nothing
    , _olSiteId = Nothing
    , _olMaxResults = Nothing
    , _olFields = Nothing
    , _olAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
olQuotaUser :: Lens' OrdersList' (Maybe Text)
olQuotaUser
  = lens _olQuotaUser (\ s a -> s{_olQuotaUser = a})

-- | Returns response with indentations and line breaks.
olPrettyPrint :: Lens' OrdersList' Bool
olPrettyPrint
  = lens _olPrettyPrint
      (\ s a -> s{_olPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
olUserIp :: Lens' OrdersList' (Maybe Text)
olUserIp = lens _olUserIp (\ s a -> s{_olUserIp = a})

-- | Allows searching for orders by name or ID. Wildcards (*) are allowed.
-- For example, \"order*2015\" will return orders with names like \"order
-- June 2015\", \"order April 2015\", or simply \"order 2015\". Most of the
-- searches also add wildcards implicitly at the start and the end of the
-- search string. For example, a search string of \"order\" will match
-- orders with name \"my order\", \"order 2015\", or simply \"order\".
olSearchString :: Lens' OrdersList' (Maybe Text)
olSearchString
  = lens _olSearchString
      (\ s a -> s{_olSearchString = a})

-- | Select only orders with these IDs.
olIds :: Lens' OrdersList' (Maybe Int64)
olIds = lens _olIds (\ s a -> s{_olIds = a})

-- | User profile ID associated with this request.
olProfileId :: Lens' OrdersList' Int64
olProfileId
  = lens _olProfileId (\ s a -> s{_olProfileId = a})

-- | Order of sorted results, default is ASCENDING.
olSortOrder :: Lens' OrdersList' (Maybe OrdersList'SortOrder)
olSortOrder
  = lens _olSortOrder (\ s a -> s{_olSortOrder = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
olKey :: Lens' OrdersList' (Maybe Text)
olKey = lens _olKey (\ s a -> s{_olKey = a})

-- | Value of the nextPageToken from the previous result page.
olPageToken :: Lens' OrdersList' (Maybe Text)
olPageToken
  = lens _olPageToken (\ s a -> s{_olPageToken = a})

-- | Project ID for orders.
olProjectId :: Lens' OrdersList' Int64
olProjectId
  = lens _olProjectId (\ s a -> s{_olProjectId = a})

-- | Field by which to sort the list.
olSortField :: Lens' OrdersList' (Maybe OrdersList'SortField)
olSortField
  = lens _olSortField (\ s a -> s{_olSortField = a})

-- | OAuth 2.0 token for the current user.
olOauthToken :: Lens' OrdersList' (Maybe Text)
olOauthToken
  = lens _olOauthToken (\ s a -> s{_olOauthToken = a})

-- | Select only orders that are associated with these site IDs.
olSiteId :: Lens' OrdersList' (Maybe Int64)
olSiteId = lens _olSiteId (\ s a -> s{_olSiteId = a})

-- | Maximum number of results to return.
olMaxResults :: Lens' OrdersList' (Maybe Int32)
olMaxResults
  = lens _olMaxResults (\ s a -> s{_olMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
olFields :: Lens' OrdersList' (Maybe Text)
olFields = lens _olFields (\ s a -> s{_olFields = a})

-- | Data format for the response.
olAlt :: Lens' OrdersList' Alt
olAlt = lens _olAlt (\ s a -> s{_olAlt = a})

instance GoogleRequest OrdersList' where
        type Rs OrdersList' = OrdersListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u OrdersList'{..}
          = go _olQuotaUser (Just _olPrettyPrint) _olUserIp
              _olSearchString
              _olIds
              _olProfileId
              _olSortOrder
              _olKey
              _olPageToken
              _olProjectId
              _olSortField
              _olOauthToken
              _olSiteId
              _olMaxResults
              _olFields
              (Just _olAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy OrdersListAPI) r u
