class CreateChildren < ActiveRecord::Migration[6.1]
  def change
    create_table :children do |t|
      t.string :first_name
      t.string :last_name
      t.date :birth_date
      t.belongs_to :family, null: false, foreign_key: true

      t.timestamps
    end
  end
end
