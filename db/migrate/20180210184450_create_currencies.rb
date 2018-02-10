class CreateCurrencies < ActiveRecord::Migration[5.1]
  def change
    create_table :currencies do |t|
      t.decimal :team_market_percent
      t.date :ico_date
      t.string :vertical
      t.string :team
      t.integer :team_rating
      t.boolean :needs_blockchain
      t.string :countries_ico_available
      t.decimal :scam_sale_probability
      t.string :smart_money_investors
      t.integer :mining_difficulty
      t.integer :arbitrage_activity

      t.timestamps
    end
  end
end
