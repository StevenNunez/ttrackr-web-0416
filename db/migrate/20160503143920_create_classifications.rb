class CreateClassifications < ActiveRecord::Migration
  def change
    create_table :classifications do |t|
      t.belongs_to :shirt, index: true, foreign_key: true
      t.belongs_to :tag, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
