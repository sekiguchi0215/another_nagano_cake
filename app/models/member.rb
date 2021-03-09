class Member < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :cart_items
  has_many :addresses
  has_many :orders

  enum withdrawal_status: { 有効: 0, 無効: 1 }

  validates :first_name, presence: true
  validates :last_naem, presence: true
  validates :first_name_kana, presence: true
  validates :last_naem_kana, presence: true
  validates :postal_code, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true

  include JpPrefecture
  	jp_prefecture :prefecture_code

  def prefecture_name
  	JpPrefecture::Prefecture.find(code: prefecture_code).try(:name)
  end

  def prefecture_name=(prefecture_name)
  	self.prefecture_code = JpPrefecture::Prefecture.find(name: prefecture_name).code
  end

  def active_for_authentication?
  	super && (self.is_deleted == false)
  end
end
