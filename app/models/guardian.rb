class Guardian < ApplicationRecord
  belongs_to :family
  delegate :children, to: :family
  has_secure_password
  has_one_attached :profile_pic

  validates :username, uniqueness: {case_sensitive: false}, presence: true
  validates :first_name, :last_name, :role, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  accepts_nested_attributes_for :family

	def family_attributes=(family_attributes)
    self.family.update(image: family_attributes[:image]) 
  end
  

  def full_name
    self.first_name.downcase.capitalize + " " + self.last_name.downcase.capitalize
  end

end
