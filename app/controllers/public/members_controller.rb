class Public::MembersController < ApplicationController
  def show
  	@member = current_member
  end

  def edit
  	@member = current_member
  end

  def update
  	@member = current_member
  	@member.update(member_params)
  	redirect_to public_member_path
  end

  def withdrawal
  end

  def destroy
  	current_member.update(is_deleted: true, withdrawal_status: 1)
  	reset_session
  	# セッション情報を削除
  	redirect_to root_path
  end

  private

  def member_params
  	params.require(:member).permit(:first_name, :last_name, :first_name_kana, :last_name_kana, :email, :postal_code, :address, :phone_number, :withdrawal_status)
  end
end
