class RemoveRRrFromLends < ActiveRecord::Migration[5.0]
  def change
    remove_column :lends, :begin, :datetime
  end
end
