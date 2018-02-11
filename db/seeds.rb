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


# {"id"=>"vechain", "name"=>"VeChain", "symbol"=>"VEN", "rank"=>"20", "price_usd"=>"4.17638", "price_btc"=>"0.00050665", "24h_volume_usd"=>"50621700.0", "market_cap_usd"=>"1964825839.0", "available_supply"=>"470461462.0", "total_supply"=>"873378637.0", "max_supply"=>nil, "percent_change_1h"=>"-2.77", "percent_change_24h"=>"-11.02", "percent_change_7d"=>"-23.99", "last_updated"=>"1518312253"}

legit_team_member_names = ['Satoshi Coinmoto',
                           '50 Cent',
                           'Winklevoss',
                           'Paris Hilton',
                           'Mark Cuban',
                           'Kevin Mack',
                           'Anonymous',
                           'Kim Chen Coin',
                           'Mark Coinberg',
                           'Moon Hodl'
]

# puts crypto_coins
data = crypto_coins.map {|coin|
  {
      team_market_percent: rand.round(2),
      ico_date: Faker::Date.backward(2000),
      vertical: nil,
      team: legit_team_member_names.sample((1..3).to_a.sample.to_s),
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
