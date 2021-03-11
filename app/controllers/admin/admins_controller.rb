class Admin::AdminsController < ApplicationController
  def top
  	range = Date.today.beginning_of_day..Date.today.end_of_day 
  	# 本日の0時〜23時59分までのデータを指定。
  	@order = Order.where(created_at: range)
  	# "whereメソッド"で本日の注文データのみに限定する。
  end
end
