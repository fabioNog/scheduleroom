class CreateReserves < ActiveRecord::Migration[7.0]
  def change
    create_table :reserves do |t|
      t.string :name
      t.date :start_date
      t.date :termination_date

      t.timestamps
    end
  end
end
