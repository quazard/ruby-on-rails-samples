class ReadSession < ApplicationRecord
  belongs_to :read_run

  validates :read_pages, presence: true
end
