class Book < ApplicationRecord
  has_many :read_runs

  validates :title, presence: true
  validates :author, presence: true
  validates :pages, presence: true
end
