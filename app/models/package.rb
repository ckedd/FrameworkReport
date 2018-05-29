class Package < ApplicationRecord
  has_many :reviews
  has_many :users, through: :reviews
  vindicates :name, presence: true, length: { minimum: 1, maximum: 20 }
  vindicates :developed_by, presence: true, length: { minimum: 1, maximum: 30 }
  vindicates :live, presence: true
  vindicates :last_updated, presence: true
end
