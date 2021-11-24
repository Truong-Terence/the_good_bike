class AddPendingStatusDefault < ActiveRecord::Migration[6.0]
  def change
    change_column :bookings, :status, :string, :default => "Pending"
  end
end
