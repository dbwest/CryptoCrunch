# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'rest-client'
require 'faker'

coinmarket_base_url = 'https://api.coinmarketcap.com/v1/'
entries = 20

ticker_url = coinmarket_base_url + "/ticker/?limit=#{entries}"
crypto_coins = JSON.parse(RestClient.get(ticker_url))

# {"id"=>"bitcoin", "name"=>"Bitcoin", "symbol"=>"BTC", "rank"=>"1", "price_usd"=>"8324.35", "price_btc"=>"1.0", "24h_volume_usd"=>"7233810000.0", "market_cap_usd"=>"140326689581", "available_supply"=>"16857375.0", "total_supply"=>"16857375.0", "max_supply"=>"21000000.0", "percent_change_1h"=>"-2.29", "percent_change_24h"=>"-6.46", "percent_change_7d"=>"-9.23", "last_updated"=>"1518312266"}
# {"id"=>"ethereum", "name"=>"Ethereum", "symbol"=>"ETH", "rank"=>"2", "price_usd"=>"831.154", "price_btc"=>"0.10083", "24h_volume_usd"=>"2755070000.0", "market_cap_usd"=>"81069898863.0", "available_supply"=>"97538963.0", "total_supply"=>"97538963.0", "max_supply"=>nil, "percent_change_1h"=>"-2.29", "percent_change_24h"=>"-6.99", "percent_change_7d"=>"-13.37", "last_updated"=>"1518312250"}
# {"id"=>"ripple", "name"=>"Ripple", "symbol"=>"XRP", "rank"=>"3", "price_usd"=>"0.97434", "price_btc"=>"0.0001182", "24h_volume_usd"=>"4060860000.0", "market_cap_usd"=>"38008239360.0", "available_supply"=>"39009215838.0", "total_supply"=>"99992725510.0", "max_supply"=>"100000000000", "percent_change_1h"=>"-5.66", "percent_change_24h"=>"-4.63", "percent_change_7d"=>"5.37", "last_updated"=>"1518312241"}
# {"id"=>"bitcoin-cash", "name"=>"Bitcoin Cash", "symbol"=>"BCH", "rank"=>"4", "price_usd"=>"1223.6", "price_btc"=>"0.14844", "24h_volume_usd"=>"719126000.0", "market_cap_usd"=>"20753204290.0", "available_supply"=>"16960775.0", "total_supply"=>"16960775.0", "max_supply"=>"21000000.0", "percent_change_1h"=>"-4.9", "percent_change_24h"=>"-6.95", "percent_change_7d"=>"-3.69", "last_updated"=>"1518312252"}
# {"id"=>"cardano", "name"=>"Cardano", "symbol"=>"ADA", "rank"=>"5", "price_usd"=>"0.383957", "price_btc"=>"0.00004658", "24h_volume_usd"=>"843647000.0", "market_cap_usd"=>"9954880223.0", "available_supply"=>"25927070538.0", "total_supply"=>"31112483745.0", "max_supply"=>"45000000000.0", "percent_change_1h"=>"-4.03", "percent_change_24h"=>"-9.53", "percent_change_7d"=>"-13.94", "last_updated"=>"1518312254"}
# {"id"=>"litecoin", "name"=>"Litecoin", "symbol"=>"LTC", "rank"=>"6", "price_usd"=>"150.687", "price_btc"=>"0.0182805", "24h_volume_usd"=>"529231000.0", "market_cap_usd"=>"8312095809.0", "available_supply"=>"55161333.0", "total_supply"=>"55161333.0", "max_supply"=>"84000000.0", "percent_change_1h"=>"-2.04", "percent_change_24h"=>"-9.44", "percent_change_7d"=>"-7.04", "last_updated"=>"1518312242"}
# {"id"=>"stellar", "name"=>"Stellar", "symbol"=>"XLM", "rank"=>"7", "price_usd"=>"0.3831", "price_btc"=>"0.00004648", "24h_volume_usd"=>"197247000.0", "market_cap_usd"=>"7061383728.0", "available_supply"=>"18432220641.0", "total_supply"=>"103669352049", "max_supply"=>nil, "percent_change_1h"=>"-3.53", "percent_change_24h"=>"-9.3", "percent_change_7d"=>"-12.79", "last_updated"=>"1518312243"}
# {"id"=>"neo", "name"=>"NEO", "symbol"=>"NEO", "rank"=>"8", "price_usd"=>"105.507", "price_btc"=>"0.0127994", "24h_volume_usd"=>"324853000.0", "market_cap_usd"=>"6857955000.0", "available_supply"=>"65000000.0", "total_supply"=>"100000000.0", "max_supply"=>nil, "percent_change_1h"=>"-2.39", "percent_change_24h"=>"-11.28", "percent_change_7d"=>"-13.36", "last_updated"=>"1518312248"}
# {"id"=>"eos", "name"=>"EOS", "symbol"=>"EOS", "rank"=>"9", "price_usd"=>"8.56328", "price_btc"=>"0.00103884", "24h_volume_usd"=>"535266000.0", "market_cap_usd"=>"5663134947.0", "available_supply"=>"661327779.0", "total_supply"=>"900000000.0", "max_supply"=>"1000000000.0", "percent_change_1h"=>"-4.27", "percent_change_24h"=>"-13.95", "percent_change_7d"=>"-13.2", "last_updated"=>"1518312252"}
# {"id"=>"nem", "name"=>"NEM", "symbol"=>"XEM", "rank"=>"10", "price_usd"=>"0.555499", "price_btc"=>"0.00006739", "24h_volume_usd"=>"61765200.0", "market_cap_usd"=>"4999490999.0", "available_supply"=>"8999999999.0", "total_supply"=>"8999999999.0", "max_supply"=>nil, "percent_change_1h"=>"-3.24", "percent_change_24h"=>"-8.42", "percent_change_7d"=>"-11.54", "last_updated"=>"1518312245"}
# {"id"=>"iota", "name"=>"IOTA", "symbol"=>"MIOTA", "rank"=>"11", "price_usd"=>"1.77613", "price_btc"=>"0.00021547", "24h_volume_usd"=>"62810700.0", "market_cap_usd"=>"4936807122.0", "available_supply"=>"2779530283.0", "total_supply"=>"2779530283.0", "max_supply"=>"2779530283.0", "percent_change_1h"=>"-3.3", "percent_change_24h"=>"-11.29", "percent_change_7d"=>"-10.51", "last_updated"=>"1518312251"}
# {"id"=>"dash", "name"=>"Dash", "symbol"=>"DASH", "rank"=>"12", "price_usd"=>"608.525", "price_btc"=>"0.0738225", "24h_volume_usd"=>"109946000.0", "market_cap_usd"=>"4793268099.0", "available_supply"=>"7876863.0", "total_supply"=>"7876863.0", "max_supply"=>"18900000.0", "percent_change_1h"=>"-2.5", "percent_change_24h"=>"-6.41", "percent_change_7d"=>"-4.36", "last_updated"=>"1518312242"}
# {"id"=>"monero", "name"=>"Monero", "symbol"=>"XMR", "rank"=>"13", "price_usd"=>"239.583", "price_btc"=>"0.0290647", "24h_volume_usd"=>"69067200.0", "market_cap_usd"=>"3763172011.0", "available_supply"=>"15707175.0", "total_supply"=>"15707175.0", "max_supply"=>nil, "percent_change_1h"=>"-2.92", "percent_change_24h"=>"-9.78", "percent_change_7d"=>"-4.81", "last_updated"=>"1518312242"}
# {"id"=>"lisk", "name"=>"Lisk", "symbol"=>"LSK", "rank"=>"14", "price_usd"=>"25.5031", "price_btc"=>"0.00309388", "24h_volume_usd"=>"92966600.0", "market_cap_usd"=>"3007751250.0", "available_supply"=>"117936692.0", "total_supply"=>"117936692.0", "max_supply"=>nil, "percent_change_1h"=>"-5.47", "percent_change_24h"=>"-11.48", "percent_change_7d"=>"11.12", "last_updated"=>"1518312246"}
# {"id"=>"tron", "name"=>"TRON", "symbol"=>"TRX", "rank"=>"15", "price_usd"=>"0.0450489", "price_btc"=>"0.00000547", "24h_volume_usd"=>"409562000.0", "market_cap_usd"=>"2961883748.0", "available_supply"=>"65748192475.0", "total_supply"=>"100000000000", "max_supply"=>nil, "percent_change_1h"=>"-5.17", "percent_change_24h"=>"-14.65", "percent_change_7d"=>"0.85", "last_updated"=>"1518312254"}
# {"id"=>"ethereum-classic", "name"=>"Ethereum Classic", "symbol"=>"ETC", "rank"=>"16", "price_usd"=>"23.3141", "price_btc"=>"0.00282832", "24h_volume_usd"=>"240637000.0", "market_cap_usd"=>"2325975320.0", "available_supply"=>"99766893.0", "total_supply"=>"99766893.0", "max_supply"=>nil, "percent_change_1h"=>"-4.41", "percent_change_24h"=>"-10.25", "percent_change_7d"=>"-3.41", "last_updated"=>"1518312247"}
# {"id"=>"tether", "name"=>"Tether", "symbol"=>"USDT", "rank"=>"17", "price_usd"=>"1.00801", "price_btc"=>"0.00012229", "24h_volume_usd"=>"2539860000.0", "market_cap_usd"=>"2234900111.0", "available_supply"=>"2217140814.0", "total_supply"=>"2280109970.0", "max_supply"=>nil, "percent_change_1h"=>"0.32", "percent_change_24h"=>"0.64", "percent_change_7d"=>"0.76", "last_updated"=>"1518312245"}
# {"id"=>"bitcoin-gold", "name"=>"Bitcoin Gold", "symbol"=>"BTG", "rank"=>"18", "price_usd"=>"123.857", "price_btc"=>"0.0150256", "24h_volume_usd"=>"73534800.0", "market_cap_usd"=>"2082848807.0", "available_supply"=>"16816561.0", "total_supply"=>"16916561.0", "max_supply"=>"21000000.0", "percent_change_1h"=>"-5.42", "percent_change_24h"=>"-25.08", "percent_change_7d"=>"7.54", "last_updated"=>"1518312255"}
# {"id"=>"qtum", "name"=>"Qtum", "symbol"=>"QTUM", "rank"=>"19", "price_usd"=>"27.9917", "price_btc"=>"0.00339577", "24h_volume_usd"=>"371641000.0", "market_cap_usd"=>"2067822121.0", "available_supply"=>"73872688.0", "total_supply"=>"100372688.0", "max_supply"=>nil, "percent_change_1h"=>"-5.73", "percent_change_24h"=>"-11.35", "percent_change_7d"=>"-6.31", "last_updated"=>"1518312250"}
# {"id"=>"vechain", "name"=>"VeChain", "symbol"=>"VEN", "rank"=>"20", "price_usd"=>"4.17638", "price_btc"=>"0.00050665", "24h_volume_usd"=>"50621700.0", "market_cap_usd"=>"1964825839.0", "available_supply"=>"470461462.0", "total_supply"=>"873378637.0", "max_supply"=>nil, "percent_change_1h"=>"-2.77", "percent_change_24h"=>"-11.02", "percent_change_7d"=>"-23.99", "last_updated"=>"1518312253"}

legit_team_member_names = ['Satoshi',
                           '50 Cent',
                           'Winklevoss'
]

# puts crypto_coins
data = crypto_coins.map {|coin|
  {
      team_market_percent: rand.round(2),
      ico_date: Faker::Date.backward(2000),
      vertical: nil,
      team: legit_team_member_names.sample((1..3).to_a.sample),
      team_rating: (rand * 10).floor,
      needs_blockchain: rand > 0.5,
      countries_ico_available: [Faker::Address.country, Faker::Address.country, Faker::Address.country],
      scam_sale_probability: (rand * 10).floor,
      smart_money_investors: ['Mark Cuban', 'Chuck Norris', '50 Cent'].sample,
      mining_difficulty: rand * 100,
      arbitrage_activity: rand * 100,
      name: coin['name'],
      json_data: nil,
      link_to_wp: "#{coin['name']}.com",
      number_of_coins_issued: coin['total_supply'],
      coin_release_date: Faker::Date.between(Date.today, Date.today),
      whitepaper_link: "#{coin['name']}.com",
      coins_issued: coin['total_supply'],
      coin_image: nil,
      logo: nil
  }
}

data.each do |entry|
  Currency.create(entry)
end
