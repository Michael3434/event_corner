class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.references :message, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
