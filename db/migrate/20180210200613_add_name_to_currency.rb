class AddNameToCurrency < ActiveRecord::Migration[5.1]
  def change
    change_table :currencies do |t|
      t.string :name 
      # t.jsonb :json_data
      t.string :json_data
      t.string :link_to_wp
      t.string :number_of_coins_issued
      t.string :coin_release_date
      t.string :whitepaper_link
      t.string :coins_issued
    end
  end
end
