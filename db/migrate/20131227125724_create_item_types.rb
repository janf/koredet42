class CreateItemTypes < ActiveRecord::Migration
  def change
    create_table :item_types do |t|
      t.string :itemclass
      t.string :itemtype

      t.timestamps
    end
  end
end
