class CreateFlashcards < ActiveRecord::Migration[6.0]
  def change
    create_table :flashcards do |t|
      t.string :question
      t.string :answer
      t.belongs_to :topic, null: false, foreign_key: true

      t.timestamps
    end
  end
end
