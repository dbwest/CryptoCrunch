require 'rest-client'
require 'json'
require 'csv'

url = 'https://api.coinmarketcap.com/v1/ticker/?limit=10'

csv = CSV.generate do |csv|
  csv << JSON.parse(RestClient.get(url)).first.keys
  JSON.parse(RestClient.get(url)).each {|hash| csv << hash.values}
end

File.write('my.csv',csv)