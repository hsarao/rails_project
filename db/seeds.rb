require 'json'
require 'rubygems'
Series.delete_all
file = File.read("#{Rails.root}/db/it.1.json")
series = JSON.parse(file)
seriesName = series["name"]

require 'pp'
puts series.size
Series.create(name: seriesName)
# pp Series.first


