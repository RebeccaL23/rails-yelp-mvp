class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  @category = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, :category, :address, presence: true
  validates :category, :inclusion=> { :in => @category }
end
