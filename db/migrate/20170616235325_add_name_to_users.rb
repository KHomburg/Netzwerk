class AddNameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string
    add_column :users, :firstname, :string
    add_column :users, :date_of_birth, :datetime
    add_column :users, :aktiv_seit, :datetime
    add_column :users, :bund, :string
    add_column :users, :bio, :text
  end
end
