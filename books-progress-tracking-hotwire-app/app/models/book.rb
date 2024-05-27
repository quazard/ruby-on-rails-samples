class Book < ApplicationRecord
  has_many :read_runs, -> { order(:created_at => :desc) }

  validates :title, presence: true
  validates :author, presence: true
  validates :pages, presence: true
end
