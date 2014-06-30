class CreateShouts < ActiveRecord::Migration
  def change
    create_table :shouts do |t|
      t.text :body, null: false
      t.belongs_to :user, index: true, null: false

      t.timestamps
    end
  end
end
