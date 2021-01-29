class Photo < ApplicationRecord
  belongs_to :family
  has_one_attached :attachment

  validates :attachment, presence: true
end
