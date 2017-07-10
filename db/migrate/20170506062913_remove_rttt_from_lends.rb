class RemoveRtttFromLends < ActiveRecord::Migration[5.0]
  def change
    remove_column :lends, :finish, :datetime
  end
end
