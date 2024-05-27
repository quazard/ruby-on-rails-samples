class CreateReadSessions < ActiveRecord::Migration[7.1]
  def change
    create_table :read_sessions do |t|
      t.integer :read_pages

      t.timestamps
    end

    add_belongs_to :read_sessions, :read_run
  end
end
