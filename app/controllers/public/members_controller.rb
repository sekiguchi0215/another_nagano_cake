class Public::MembersController < ApplicationController
  def edit
  	@member = current_member
  end

  def show
  	@member = current_member
  end

  def withdrawal
  end
end
