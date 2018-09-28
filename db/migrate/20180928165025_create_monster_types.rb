class CreateMonsterTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :monster_types do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
