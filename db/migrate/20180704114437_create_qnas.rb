class CreateQnas < ActiveRecord::Migration[5.2]
  def change
    create_table :qnas do |t|
      t.string :title
      t.text :content
      t.belongs_to :user, foreign_key: true
      t.integer :view_count
      t.string :image

      t.timestamps
    end
  end
end
