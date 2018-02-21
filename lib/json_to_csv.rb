require 'rest-client'
require 'json'
require 'csv'

coinmarket_base_url = 'https://api.coinmarketcap.com/v1/'
entries = 0

ticker_url = coinmarket_base_url + "/ticker/?limit=#{entries}"

csv = CSV.generate do |csv|
  csv << JSON.parse(RestClient.get(ticker_url)).first.keys
  JSON.parse(RestClient.get(ticker_url)).each {|hash| csv << hash.values}
end

#File.write('json_to_csv_out.csv',csv)
File.write('full_ticker.csv',csv)
