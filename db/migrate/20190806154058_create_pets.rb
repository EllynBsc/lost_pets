class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :specie
      t.date :found_on
      t.string :address

      t.timestamps
    end
  end
end
