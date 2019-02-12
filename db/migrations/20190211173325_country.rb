class Country < ActiveRecord::Migration[5.2]
  def change
    create_table :countries do |t|
      t.string :name, :limit => 55
      t.integer :code
      t.integer :e164
      t.integer :mcc
      t.integer :mcci

      t.timestamps
    end
  end
end
