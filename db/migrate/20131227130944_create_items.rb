class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :itemtype
      t.string :itemname
      t.boolean :isunique
      t.decimal :appxvalue

      t.timestamps
    end
  end
end
