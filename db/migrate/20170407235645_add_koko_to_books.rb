class AddKokoToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :impressions, :string
  end
end
