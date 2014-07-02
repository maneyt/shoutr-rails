class CreateTextSubjects < ActiveRecord::Migration
  def change
    create_table :text_subjects do |t|
      t.text :body, null: false

      t.timestamps
    end
  end
end
