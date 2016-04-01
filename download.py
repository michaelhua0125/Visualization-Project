# -*- coding: utf-8 -*-
"""
Created on Mon Mar 28 12:00:24 2016

@author: Michaelhua
"""



import urllib,json

filepath="D:\\HSPH\\CS 171\\Final\\data-wrangling\\teams\\" 

for teamid in range(1610612737,1610612764):
    url="http://stats.nba.com/stats/teamdashboardbyshootingsplits/?TeamID="+str(teamid)+"&Season=2014-15&MeasureType=Advanced&PerMode=Totals&DateFrom=&DateTo=&PlusMinus=Y&PaceAdjust=Y&Rank=N&LeagueID=00&Location=&Month=0&OpponentTeamID=0&Outcome=&Period=0&Position=&SeasonSegment=&SeasonType=Regular Season&VsConference=&GameSegment=&VsDivision=&LastNGames=0"
    print url  
    furl=urllib.urlopen(url)
    data=json.loads(furl.read())
    fout=open(filepath+str(teamid)+".json","w")
    content=furl.read()
    fout.write(content)
    fout.close()

        
    

