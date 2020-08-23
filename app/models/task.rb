class Task < ApplicationRecord
  #belongs_to :entry
  has_many :entries, dependent: :destroy
end
