class Child < ApplicationRecord
  belongs_to :family
  has_one_attached :profile_pic

  validates :first_name, :last_name, :birth_date, presence: true

  def full_name
    self.first_name.downcase.capitalize + " " + self.last_name.downcase.capitalize
  end
  
end
