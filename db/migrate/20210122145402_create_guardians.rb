class CreateGuardians < ActiveRecord::Migration[6.1]
  def change
    create_table :guardians do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :password_digest
      t.string :email
      t.string :role
      t.belongs_to :family, null: false, foreign_key: true

      t.timestamps
    end
  end
end
