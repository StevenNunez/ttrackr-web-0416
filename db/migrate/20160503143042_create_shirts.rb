class CreateShirts < ActiveRecord::Migration
  def change
    create_table :shirts do |t|
      t.string :name
      t.string :source_url
      t.string :image_url

      t.timestamps null: false
    end
  end
end
