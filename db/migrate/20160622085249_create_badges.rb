class CreateBadges < ActiveRecord::Migration
  def change
    create_table :badges do |t|
      t.string :phrase
      t.references :teacher
      t.integer :votes, default: 0
      t.timestamps null: false
    end
  end
end
