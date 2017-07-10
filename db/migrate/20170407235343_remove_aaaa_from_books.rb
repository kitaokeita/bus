class RemoveAaaaFromBooks < ActiveRecord::Migration[5.0]
  def change
    remove_column :books, :impressions, :text
  end
end
