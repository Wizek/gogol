{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Games.Scores.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get high scores, and optionally ranks, in leaderboards for the currently
-- authenticated player. For a specific time span, leaderboardId can be set
-- to ALL to retrieve data for all leaderboards in a given time span. NOTE:
-- You cannot ask for \'ALL\' leaderboards and \'ALL\' timeSpans in the
-- same request; only one parameter may be set to \'ALL\'.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.scores.get@.
module Network.Google.API.Games.Scores.Get
    (
    -- * REST Resource
      ScoresGetAPI

    -- * Creating a Request
    , scoresGet'
    , ScoresGet'

    -- * Request Lenses
    , sgQuotaUser
    , sgPrettyPrint
    , sgUserIp
    , sgTimeSpan
    , sgLeaderboardId
    , sgKey
    , sgIncludeRankType
    , sgLanguage
    , sgPageToken
    , sgOauthToken
    , sgPlayerId
    , sgMaxResults
    , sgFields
    , sgAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for games.scores.get which the
-- 'ScoresGet'' request conforms to.
type ScoresGetAPI =
     "players" :>
       Capture "playerId" Text :>
         "leaderboards" :>
           Capture "leaderboardId" Text :>
             "scores" :>
               Capture "timeSpan" ScoresGet'TimeSpan :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "includeRankType"
                           ScoresGet'IncludeRankType
                           :>
                           QueryParam "language" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "maxResults" Nat :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" Alt :>
                                       Get '[JSON]
                                         PlayerLeaderboardScoreListResponse

-- | Get high scores, and optionally ranks, in leaderboards for the currently
-- authenticated player. For a specific time span, leaderboardId can be set
-- to ALL to retrieve data for all leaderboards in a given time span. NOTE:
-- You cannot ask for \'ALL\' leaderboards and \'ALL\' timeSpans in the
-- same request; only one parameter may be set to \'ALL\'.
--
-- /See:/ 'scoresGet'' smart constructor.
data ScoresGet' = ScoresGet'
    { _sgQuotaUser       :: !(Maybe Text)
    , _sgPrettyPrint     :: !Bool
    , _sgUserIp          :: !(Maybe Text)
    , _sgTimeSpan        :: !ScoresGet'TimeSpan
    , _sgLeaderboardId   :: !Text
    , _sgKey             :: !(Maybe Text)
    , _sgIncludeRankType :: !(Maybe ScoresGet'IncludeRankType)
    , _sgLanguage        :: !(Maybe Text)
    , _sgPageToken       :: !(Maybe Text)
    , _sgOauthToken      :: !(Maybe Text)
    , _sgPlayerId        :: !Text
    , _sgMaxResults      :: !(Maybe Nat)
    , _sgFields          :: !(Maybe Text)
    , _sgAlt             :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ScoresGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgQuotaUser'
--
-- * 'sgPrettyPrint'
--
-- * 'sgUserIp'
--
-- * 'sgTimeSpan'
--
-- * 'sgLeaderboardId'
--
-- * 'sgKey'
--
-- * 'sgIncludeRankType'
--
-- * 'sgLanguage'
--
-- * 'sgPageToken'
--
-- * 'sgOauthToken'
--
-- * 'sgPlayerId'
--
-- * 'sgMaxResults'
--
-- * 'sgFields'
--
-- * 'sgAlt'
scoresGet'
    :: ScoresGet'TimeSpan -- ^ 'timeSpan'
    -> Text -- ^ 'leaderboardId'
    -> Text -- ^ 'playerId'
    -> ScoresGet'
scoresGet' pSgTimeSpan_ pSgLeaderboardId_ pSgPlayerId_ =
    ScoresGet'
    { _sgQuotaUser = Nothing
    , _sgPrettyPrint = True
    , _sgUserIp = Nothing
    , _sgTimeSpan = pSgTimeSpan_
    , _sgLeaderboardId = pSgLeaderboardId_
    , _sgKey = Nothing
    , _sgIncludeRankType = Nothing
    , _sgLanguage = Nothing
    , _sgPageToken = Nothing
    , _sgOauthToken = Nothing
    , _sgPlayerId = pSgPlayerId_
    , _sgMaxResults = Nothing
    , _sgFields = Nothing
    , _sgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sgQuotaUser :: Lens' ScoresGet' (Maybe Text)
sgQuotaUser
  = lens _sgQuotaUser (\ s a -> s{_sgQuotaUser = a})

-- | Returns response with indentations and line breaks.
sgPrettyPrint :: Lens' ScoresGet' Bool
sgPrettyPrint
  = lens _sgPrettyPrint
      (\ s a -> s{_sgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sgUserIp :: Lens' ScoresGet' (Maybe Text)
sgUserIp = lens _sgUserIp (\ s a -> s{_sgUserIp = a})

-- | The time span for the scores and ranks you\'re requesting.
sgTimeSpan :: Lens' ScoresGet' ScoresGet'TimeSpan
sgTimeSpan
  = lens _sgTimeSpan (\ s a -> s{_sgTimeSpan = a})

-- | The ID of the leaderboard. Can be set to \'ALL\' to retrieve data for
-- all leaderboards for this application.
sgLeaderboardId :: Lens' ScoresGet' Text
sgLeaderboardId
  = lens _sgLeaderboardId
      (\ s a -> s{_sgLeaderboardId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sgKey :: Lens' ScoresGet' (Maybe Text)
sgKey = lens _sgKey (\ s a -> s{_sgKey = a})

-- | The types of ranks to return. If the parameter is omitted, no ranks will
-- be returned.
sgIncludeRankType :: Lens' ScoresGet' (Maybe ScoresGet'IncludeRankType)
sgIncludeRankType
  = lens _sgIncludeRankType
      (\ s a -> s{_sgIncludeRankType = a})

-- | The preferred language to use for strings returned by this method.
sgLanguage :: Lens' ScoresGet' (Maybe Text)
sgLanguage
  = lens _sgLanguage (\ s a -> s{_sgLanguage = a})

-- | The token returned by the previous request.
sgPageToken :: Lens' ScoresGet' (Maybe Text)
sgPageToken
  = lens _sgPageToken (\ s a -> s{_sgPageToken = a})

-- | OAuth 2.0 token for the current user.
sgOauthToken :: Lens' ScoresGet' (Maybe Text)
sgOauthToken
  = lens _sgOauthToken (\ s a -> s{_sgOauthToken = a})

-- | A player ID. A value of me may be used in place of the authenticated
-- player\'s ID.
sgPlayerId :: Lens' ScoresGet' Text
sgPlayerId
  = lens _sgPlayerId (\ s a -> s{_sgPlayerId = a})

-- | The maximum number of leaderboard scores to return in the response. For
-- any response, the actual number of leaderboard scores returned may be
-- less than the specified maxResults.
sgMaxResults :: Lens' ScoresGet' (Maybe Natural)
sgMaxResults
  = lens _sgMaxResults (\ s a -> s{_sgMaxResults = a})
      . mapping _Nat

-- | Selector specifying which fields to include in a partial response.
sgFields :: Lens' ScoresGet' (Maybe Text)
sgFields = lens _sgFields (\ s a -> s{_sgFields = a})

-- | Data format for the response.
sgAlt :: Lens' ScoresGet' Alt
sgAlt = lens _sgAlt (\ s a -> s{_sgAlt = a})

instance GoogleRequest ScoresGet' where
        type Rs ScoresGet' =
             PlayerLeaderboardScoreListResponse
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u ScoresGet'{..}
          = go _sgQuotaUser (Just _sgPrettyPrint) _sgUserIp
              _sgTimeSpan
              _sgLeaderboardId
              _sgKey
              _sgIncludeRankType
              _sgLanguage
              _sgPageToken
              _sgOauthToken
              _sgPlayerId
              _sgMaxResults
              _sgFields
              (Just _sgAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy ScoresGetAPI) r u
