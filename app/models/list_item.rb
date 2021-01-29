class ListItem < ApplicationRecord
  belongs_to :list

  validates :content, presence: true

  after_save :update_list

  def update_list
    self.list.update(updated_at: DateTime.now)
  end

end
