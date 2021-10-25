class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 } # 名前はカラ禁止かつ50字以内
  validates :email, presence: true, length: { maximum: 255 }, # emailはカラ禁止かつ255字以内
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                    uniqueness: { case_sensitive: false }
  has_secure_password # パスワード暗号化の有効化
end
