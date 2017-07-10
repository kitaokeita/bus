class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.string :author
      t.string :publish
      t.string :sort
      t.string :like
      t.text :point

      t.timestamps
    end
      add_index :books, [:user_id, :created_at]
  end
end
