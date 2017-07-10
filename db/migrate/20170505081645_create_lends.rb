class CreateLends < ActiveRecord::Migration[5.0]
  def change
    create_table :lends do |t|
      t.references :user, index: true, foreign_key: true
      t.references :book, index: true, foreign_key: true
      t.datetime :begin
      t.datetime :finish

      t.timestamps null: false
    end
  end
end
