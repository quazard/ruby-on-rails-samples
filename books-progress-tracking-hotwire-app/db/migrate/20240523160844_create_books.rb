class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :pages
      t.date :published
      t.string :image

      t.timestamps
    end

    add_index :books, "lower(title)", unique: true
  end
end
