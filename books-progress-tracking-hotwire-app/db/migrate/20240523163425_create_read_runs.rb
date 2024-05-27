class CreateReadRuns < ActiveRecord::Migration[7.1]
  def change
    create_table :read_runs do |t|
      t.integer :run_number
      t.integer :status

      t.timestamps
    end

    add_belongs_to :read_runs, :book
    add_index :read_runs, [ :book_id, :run_number ], unique: true
  end
end
