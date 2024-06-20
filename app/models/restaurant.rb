class Restaurant < ApplicationRecord
  CATEGORY = %w(chinese italian japanese french belgian)
  has_many :reviews, dependent: :destroy

  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: CATEGORY, message: "%{value} is not a valid category"}
end
