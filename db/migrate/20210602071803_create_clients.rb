class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.text :name
      t.text :phone
      t.text :datestamp
      t.txet :barber
      t.text :color

      t.timestamps
    end
  end
end
