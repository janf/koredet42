class CreateInitialDb < ActiveRecord::Migration
  def change
     create_table :item_class do |t| 
        t.string  :item_class_code, null: false, index: true
        t.string  :item_class_name, null: false
        t.timestamps
     end
        
     create_table :item_type do |t| 
        t.string  :item_type_code, null: false
        t.string  :item_type_name, null: false
	t.timestamps
     end

     create_table :item do |t|
        t.string  :item_name, null: false
        t.boolean :has_individuals, default: false
        t.string  :barcode
        t.decimal :value
        t.decimal :weight
        t.integer :lifespan_in_days
        t.references :item_class, index: true 
        t.references :item_type, index: true
        t.timestamps
     end


     create_table :location_class do |t|
	t.string :location_class_code, null: false
        t.string :location_class_name, null: false
        t.boolean :physical_location, null: false, default: true
        t.timestamps   
     end 

     create_table :location_type do |t|
	t.string :location_type_code, null: false
        t.string :location_type_name, null: false
        t.timestamps   
     end 

     create_table :location do |t|
        t.string :location_code, null: false
        t.string :location_name, null: false
	t.references :location_class, null: false
        t.references :location_type
        t.references :location, index: true
        t.timestamps
     end 
  
     create_table :inventory do |t|
        t.decimal :amount
        t.references :item_type, index: true
        t.references :location, index: true
        t.timestamps
     end 

     create_table :individual_item do |t|
        t.integer :unique_system_number, null: false
	t.integer :serial_number        
	t.string  :name  
        t.decimal :value
        t.decimal :weight
        t.integer :lifespan_in_days
        t.references :item, index: true
        t.references :location, index: true
        t.timestamps
     end

     create_table :ind_item_history do |t|
        t.references :individual_item, index: true
	t.string  :summary       
	t.text    :description  
        t.decimal :amount
        t.timestamps
     end


  end
end

