class CreatePeopleTable < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :name
      t.integer :house_id
    end

    create_table :houses do |t|
      t.string :address
    end
  end
end
