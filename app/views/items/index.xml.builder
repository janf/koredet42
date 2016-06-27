xml.instruct!
xml.items do
  @items.each do |item|
    xml.item do
      xml.item_class_name item.item_class.item_class_name
      xml.item_type_name item.item_type.item_type_name
      xml.item_name item.item_name

    end
  end
  
end


