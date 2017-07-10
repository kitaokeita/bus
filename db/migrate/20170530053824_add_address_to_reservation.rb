class AddAddressToReservation < ActiveRecord::Migration[5.0]
  def change
    add_column :reservations, :address, :string
  end
end
