class AddTddToLends < ActiveRecord::Migration[5.0]
  def change
    add_column :lends, :start, :string
    add_column :lends, :end, :string
  end
end
