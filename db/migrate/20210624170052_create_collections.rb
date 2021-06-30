class CreateCollections < ActiveRecord::Migration[6.0]
  def change
    create_table :collections do |t|
      t.string :title
      t.string :volume_count
      t.string :author
      t.string :description
      t.string :img
      t.string :release_year

      t.timestamps
    end
  end
end
