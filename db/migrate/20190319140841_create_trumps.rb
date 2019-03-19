class CreateTrumps < ActiveRecord::Migration[5.2]
  def change
    create_table :trumps do |t|
      t.string :mood
      t.string :hairstyle
      t.integer :hours_worked

      t.timestamps
    end
  end
end
