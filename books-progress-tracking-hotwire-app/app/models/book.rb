class Book < ApplicationRecord
  has_many :read_runs, -> { order(:created_at => :desc) }

  validates :title, :author, :pages, presence: true
  validates :title, uniqueness: { case_sensitive: false }
end
