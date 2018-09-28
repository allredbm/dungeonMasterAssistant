class CreateMonsters < ActiveRecord::Migration[5.2]
  def change
    create_table :monsters do |t|
      t.string :name
      t.integer :book_id
      t.integer :page
      t.integer :monster_type_id
      t.integer :sub_type_id
      t.decimal :challenge
      t.integer :hit_points
      t.integer :armor_class
      t.string :description

      t.timestamps
    end
  end
end
