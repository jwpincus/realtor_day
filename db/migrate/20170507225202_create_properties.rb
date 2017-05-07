class CreateProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :properties do |t|
      t.string :street_address
      t.string :city
      t.string :zip_code
      t.string :state
      t.references :realtor, foreign_key: true

      t.timestamps
    end
  end
end
