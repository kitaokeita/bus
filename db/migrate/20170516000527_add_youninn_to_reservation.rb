class AddYouninnToReservation < ActiveRecord::Migration[5.0]
  def change
    add_column :reservations, :approval, :integer
  end
end
