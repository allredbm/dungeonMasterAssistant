class CreateSubTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :sub_types do |t|
      t.string :name
      t.string :description
      t.integer :monster_type_id

      t.timestamps
    end
  end
end
