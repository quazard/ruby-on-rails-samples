class CreateReadRuns < ActiveRecord::Migration[7.1]
  def change
    create_table :read_runs do |t|
      t.integer :run_number
      t.integer :status

      t.timestamps
    end

    add_belongs_to :read_runs, :book
  end
end
