class CreateMangas < ActiveRecord::Migration[6.0]
  def change
    create_table :mangas do |t|
      t.string :title
      t.string :volume_number
      t.string :author
      t.string :description
      t.string :release_year
      t.integer :collection_id

      t.timestamps
    end
  end
end
