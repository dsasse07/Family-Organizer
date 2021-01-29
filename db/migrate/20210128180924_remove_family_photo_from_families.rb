class RemoveFamilyPhotoFromFamilies < ActiveRecord::Migration[6.1]
  def change
    remove_column :families, :family_photo, :string
  end
end
