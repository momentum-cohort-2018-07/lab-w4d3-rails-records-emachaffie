class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.string :breed
      t.string :size
      t.string :group
      t.string :best_suited_for

      t.timestamps
    end
  end
end
