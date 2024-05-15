class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :phone_number , presence: true
  validates :name, :address , presence: true
  validates :category ,inclusion: ["chinese", "italian", "japanese", "french", "belgian"]
  validates :category , exclusion: [nil]
end
