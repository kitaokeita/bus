class RemoveBaaaFromBooks < ActiveRecord::Migration[5.0]
  def change
    remove_column :books, :impressions, :string
  end
end
