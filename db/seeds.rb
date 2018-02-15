require 'json'
require 'rubygems'
require 'net/http'
Series.delete_all
Round.delete_all
file = File.read("#{Rails.root}/db/it.1.json")
series = JSON.parse(file)
seriesName = series["name"]
roundsArray = series["rounds"]

require 'pp'
puts roundsArray [0]["name"]
puts seriesName.size #seriesName has 15 length becuase of 15chars in series name
pp roundsArray.size
Series.create(name: seriesName)

i = 0
loop do
  Round.create(name: roundsArray [i]["name"])
  i += 1
  if i == roundsArray.size
    break
end

end





