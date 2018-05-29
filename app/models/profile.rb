class Profile < ApplicationRecord
  belongs_to :user
  validates :first_name, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
  validates :last_name, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
  validates :age, presence: true, numericality: { integer_only: true, greater_than: 0, less_than: 100 }
end
