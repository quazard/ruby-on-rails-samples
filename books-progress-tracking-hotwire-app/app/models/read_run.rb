class ReadRun < ApplicationRecord
  belongs_to :book
  has_many :read_sessions
end
