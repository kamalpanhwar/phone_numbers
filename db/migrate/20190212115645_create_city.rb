class CreateCity < ActiveRecord::Migration[5.1]
  def change
    create_table :cities do |t|
      t.references :country, foreign_key: true
      t.string :area
      t.integer :area_code
      t.boolean :numbertype
      t.integer :mnc
      t.integer :mnci
      t.string :network
      
      t.timestamps

    end
  end
end
