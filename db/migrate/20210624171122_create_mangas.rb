class CreateMangas < ActiveRecord::Migration[6.0]
  def change
    create_table :mangas do |t|
      t.string :title
      t.string :volume_number
      t.string :author
      t.string :description
      t.string :img
      t.string :release_year
      t.integer :series_id

      t.timestamps
    end
  end
end
