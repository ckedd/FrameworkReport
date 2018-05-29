class User < ApplicationRecord
  include Clearance::User
  has_one :profile
  has_many :reviews
  has_many :comments
  validates :username, presence: true, uniqueness: true, length: { mimimum: 4, maximum: 20 }
  validates :email, presence: true, confirmation: true, uniqueness: true, format: { with: /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/, message: "Must be in E-Mail format" }
  validates :email_confirmation, presence: true
  validates :password, presence: true, length: { minimum: 4, maximum: 20 }
end
