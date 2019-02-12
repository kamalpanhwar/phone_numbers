class CreateCity < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.references :country, foreign_key: true
      t.string :area
      t.integer :area_code
      t.boolean :type
      t.integer :mnc
      t.integer :mnci
      t.string :network
    end
  end
end
