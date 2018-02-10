require 'rest-client'
require 'json'
require 'csv'

coinmarket_base_url = 'https://api.coinmarketcap.com/v1/'
entries = 100

ticker_url = coinmarket_base_url + "/ticker/?limit=#{entries}"

# puts JSON.parse(RestClient.get(ticker_url)).map {|entry| entry["price_usd"]}

File.write('prices.csv', CSV.generate do |csv|
  JSON.parse(RestClient.get(ticker_url)).map {|entry| entry["price_usd"]}.each do |price|
    csv << [price]
  end
end)