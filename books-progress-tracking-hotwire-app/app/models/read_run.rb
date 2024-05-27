class ReadRun < ApplicationRecord
  enum status: [ :open, :completed ]

  belongs_to :book
  has_many :read_sessions, -> { order(:created_at => :desc) }
end
