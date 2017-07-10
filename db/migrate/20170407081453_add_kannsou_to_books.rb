class AddKannsouToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :impressions, :text
  end
end
