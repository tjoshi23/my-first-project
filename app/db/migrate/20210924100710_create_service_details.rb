class CreateServiceDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :service_details do |t|
      t.string :location
      t.string :contact_detail
      t.string :services
      t.string :days
      t.references :service, null: false, foreign_key: true
      t.decimal :lat, precision: 10, scale: 2
      t.decimal :long, precision: 10, scale: 2
      t.timestamps
    end
  end
end
