class CreateBarbers < ActiveRecord::Migration[6.1]
  def change
    create_table :barbers do |t|
      t.text :name

      t.timestamps 
    end
   Barber.create => :'Jessie Pinkman'
   Barber.create => :'Walter White'
   Barber.create => :'Gus Fring'  
  end
end
