class Movies < ActiveRecord::Migration
  def up
    create_table :movies do |t|
      t.string :title
      t.string :year
      t.text :plot
      t.string :npaa_rating
      t.string :rating
    end
  end

  def down
    drop table :movies
  end
end
