class RemovePpppFromBooks < ActiveRecord::Migration[5.0]
  def change
    remove_column :books, :point, :text
  end
end
