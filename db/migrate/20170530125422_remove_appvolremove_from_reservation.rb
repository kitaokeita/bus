class RemoveAppvolremoveFromReservation < ActiveRecord::Migration[5.0]
  def change
    remove_column :reservations, :approval, :integer
  end
end
