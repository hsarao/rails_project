require 'json'
require 'rubygems'
require 'net/http'

Series.delete_all
Round.delete_all
Match.delete_all
Team.delete_all
file = File.read("#{Rails.root}/db/it.1.json")
series = JSON.parse(file)
seriesName = series["name"]
roundsArray = series["rounds"]
matchArray = roundsArray[0]["matches"]

require 'pp'
puts roundsArray [0]["name"]
puts seriesName.size #seriesName has 15 length becuase of 15chars in series name
pp roundsArray.size
puts matchArray.size
#puts matchArray[0]["date"]
series1 = Series.create(name: seriesName)


i = 0
loop do
  singleRoundArray = roundsArray[i]
  round1 = Round.create(name: singleRoundArray["name"])

  j = 0
  loop do
    singleMatchArray = singleRoundArray["matches"]
  allTeam1Array =  singleMatchArray[j]["team1"]
    allTeam2Array =  singleMatchArray[j]["team2"]

  Team.find_or_create_by(key: allTeam1Array["key"], name: allTeam1Array["name"], code: allTeam1Array["code"])
    #team1 is creating all the teams
 # Team.find_or_create_by(key: allTeam2Array["key"], name: allTeam2Array["name"], code: allTeam2Array["code"])

    Match.create(date: singleMatchArray[j]["date"], score1: singleMatchArray[j]["score1"],
                 score2: singleMatchArray[j]["score2"])
#     teams = singleMatchArray["team1"]
    j += 1
    if j == singleMatchArray.size
      break
    end
  end
  i += 1
  if i == roundsArray.size
    break
  end
end

#puts teams.count






