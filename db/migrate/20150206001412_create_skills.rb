class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.text :skill
      t.text :description
      t.float :avg
      t.date :acquired
      t.text :special
      t.text :cert

      t.timestamps

    end
  end
end
