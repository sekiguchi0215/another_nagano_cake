class Public::HomesController < ApplicationController
  def about
  end

  def top
  	@genres = Genre.where(valid_invalid_status: 0)
  	@items = Item.limit(8).offset(4)
  end
end
