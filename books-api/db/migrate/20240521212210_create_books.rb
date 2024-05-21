class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.date :published
      t.integer :pages

      t.timestamps
    end

    add_belongs_to :books, :author
  end
end
