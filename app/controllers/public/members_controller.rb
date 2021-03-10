class Public::MembersController < ApplicationController
  def edit
  end

  def show
  	@member = current_member
  end

  def withdrawal
  end
end
