class User < ActiveRecord::Base
  authenticates_with_sorcery!

  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :password, confirmation: true, presence: true, length: { in: 6..16 }, if: :password
end
