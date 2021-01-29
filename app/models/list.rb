class List < ApplicationRecord
  belongs_to :family
  has_many :list_items, dependent: :destroy

  validates :title, presence: true

    def sorted_items
      self.list_items.sort_by{|item| item.complete ? 0 : 1}.reverse
    end

    def six_most_recent_list_items
      self.sorted_items.first(6)
    end
end 


