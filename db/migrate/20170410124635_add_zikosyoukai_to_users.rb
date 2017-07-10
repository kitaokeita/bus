class AddZikosyoukaiToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :work, :string
    add_column :users, :life, :text
    add_column :users, :likebook, :string
    add_column :users, :likebookwhy, :text
    add_column :users, :booklife, :text
  end
end
