class CreateCountry < ActiveRecord::Migration[5.1]
  def change
    create_table :countries do |t|
      t.string :name
      t.integer :code
      t.integer :e164
      t.integer :mcc
      t.integer :mcci

      t.timestamps
    end
  end
end
