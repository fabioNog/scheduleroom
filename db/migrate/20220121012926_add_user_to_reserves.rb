class AddUserToReserves < ActiveRecord::Migration[7.0]
  def change
    add_reference :reserves, :user, null: false, foreign_key: true
  end
end
