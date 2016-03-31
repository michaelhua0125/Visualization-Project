request = GET(
  "http://stats.nba.com/stats/teamdashboardbyshootingsplits",
  query = list(
    TeamID = 1610612744,
    Season = "2014-15",
    MeasureType = "Advanced",
    PerMode = "Totals",
    DateFrom = "",
    DateTo = "",
    PlusMinus = "Y",
    PaceAdjust = "Y",
    Rank = "N",
    LeagueID = "00",
    Location = "",
    Month = 0,
    OpponentTeamID = 0,
    Outcome = "",
    Period = 0,
    Position = "",
    SeasonSegment = "",
    SeasonType = "Regular Season",
    VsConference = "",
    GameSegment = "",
    VsDivision = "",
    LastNGames=0
  )
)

data = content(request)
data
url="http://stats.nba.com/stats/teamdashboardbyshootingsplits/?TeamID=1610612744&Season=2014-15&MeasureType=Advanced&PerMode=Totals&DateFrom=&DateTo=&PlusMinus=Y&PaceAdjust=Y&Rank=N&LeagueID=00&Location=&Month=0&OpponentTeamID=0&Outcome=&Period=0&Position=&SeasonSegment=&SeasonType=Regular Season&VsConference=&GameSegment=&VsDivision=&LastNGames=0"
filename="team.json"
aa_data = fromJSON(filename)
