class AddApppToReservation < ActiveRecord::Migration[5.0]
  def change
    add_column :reservations, :consent, :string
  end
end
