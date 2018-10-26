class Artist < ApplicationRecord
  has_many :lps, dependent: :destroy
  validates :name, presence: true, length: { maximum: 50 }
  validates :description, presence: true, length: { maximum: 255 }
end