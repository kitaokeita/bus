class AddUserimageToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :userface, :string
  end
end
