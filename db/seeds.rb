require 'json'
require 'rubygems'

file = File.read("#{Rails.root}/db/it.1.json")
series = JSON.parse(file)
require 'pp'
puts series.size
pp series.first

