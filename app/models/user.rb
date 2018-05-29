class User < ApplicationRecord
  include Clearance::User
  has_one :profile
  has_many :reviews
  has_many :comments
end
