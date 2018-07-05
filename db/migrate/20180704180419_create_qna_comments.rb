class CreateQnaComments < ActiveRecord::Migration[5.2]
  def change
    create_table :qna_comments do |t|
      t.text :content
      t.belongs_to :user, foreign_key: true
      t.belongs_to :qna, foreign_key: true

      t.timestamps
    end
  end
end
