class CreateAppoinments < ActiveRecord::Migration[7.0]
  def change
    create_table :appoinments do |t|
      t.string :name

      t.timestamps
    end
  end
end
