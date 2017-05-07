class AddAgencyToRealtor < ActiveRecord::Migration[5.0]
  def change
    add_reference :realtors, :agency, foreign_key: true
  end
end
