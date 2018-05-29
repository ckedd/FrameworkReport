class Package < ApplicationRecord
  has_many :reviews
  has_many :users, through: :reviews
  validates :name, presence: true, length: { minimum: 1, maximum: 20 }
  validates :developed_by, presence: true, length: { minimum: 1, maximum: 30 }
  validates :live, presence: true
  validates :last_updated, presence: true
end
