class DashboardController < ApplicationController
  before_filter :authenticate_user!

  def index
     @item_type_count = ItemType.count
     @item_class_count = ItemClass.count
     @item_count = Item.count
  end

end
