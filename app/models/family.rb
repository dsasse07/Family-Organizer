class Family < ApplicationRecord
    has_many :guardians
    has_many :children
    has_many :lists
    has_many :photos
    
    has_one_attached :image


    def most_recent_list
        self.lists.max_by(&:updated_at)
    end

    def most_recent_list_items
        self.most_recent_list.sorted_items
    end

    def sorted_lists
        self.lists.sort_by(&:updated_at).reverse
    end

    def sorted_photos
        self.photos.sort_by(&:updated_at).reverse
    end

end
