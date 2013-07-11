class Movies < ActiveRecord::Migration
  def up
    create_table :movies do |t|
      t.string :title
      t.string :year
      t.text :plot
      t.string :mpaa_rating
      t.integer :rating, default: 50
    end
  end

  def down
    drop_table :movies
  end
end
