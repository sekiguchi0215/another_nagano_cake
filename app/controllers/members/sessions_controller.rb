# frozen_string_literal: true

class Members::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end

  before_action :reject_member, only: [:create]

  protected

  def reject_member
    @member = Member.find_by(email: params[:member][:email].downcase)
    # "downcaseメソッド"は、全ての大文字を対応する小文字に置き換えた文字列を返すメソッド。
    if @member
      if (@member.valid_password?(params[:member][:password]) && (@member.active_for_authentication? == false))
        # "valid_passwordメソッド"を利用することで、入力された現在のパスワードが正しいかチェックできる。
        flash[:error] = "退会済みです。"
        redirect_to new_member_session_path
      end
    else
      flash[:error] = "必須項目を入力してください。"
    end
  end
end
