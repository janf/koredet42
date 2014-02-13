class DashboardController < ApplicationController
  before_filter :authenticate_user!

  def index
     @item_type_count = ItemType.count
  end

end
