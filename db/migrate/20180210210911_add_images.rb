class AddImages < ActiveRecord::Migration[5.1]
  def change
    change_table :currencies do |t|
        t.binary :coin_image
        t.binary :logo
    end
  end
end
