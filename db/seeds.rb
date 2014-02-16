# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#Load item_classes

    item_classes = ItemClass.create ([ {item_class_code: 'SUB', item_class_name: 'Subscription'},
					 {item_class_code: 'AST', item_class_name: 'Assets'},
					 {item_class_code: 'CON', item_class_name: 'Consumables'},
					 {item_class_code: 'INF', item_class_name: 'Information'}  ])

#load sample item_types
   
    item_types = ItemType.create([ {item_type_code: 'PAPS', item_type_name: 'Paper subscriptions'},
                                   {item_type_code: 'MEMB', item_type_name: 'Memberships'} ])
                                  
