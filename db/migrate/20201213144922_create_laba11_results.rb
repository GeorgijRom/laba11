class CreateLaba11Results < ActiveRecord::Migration[6.0]
  def change
    create_table :laba11_results do |t|
      t.integer :happy_numbers_quantity
      t.text :result

      t.timestamps
    end
  end
end
