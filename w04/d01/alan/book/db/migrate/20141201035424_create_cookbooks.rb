class CreateCookbooks < ActiveRecord::Migration
  def change
    create_table :cookbooks do |t|
      t.string :title
      t.string :cuisine
      t.string :chef
      t.string :image

      t.timestamps
    end
  end
end
