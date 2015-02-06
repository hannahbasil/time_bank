class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.text :skill
      t.text :description
      t.integer :avg
      t.integer :acquired
      t.text :special
      t.text :cert

      t.timestamps

    end
  end
end
