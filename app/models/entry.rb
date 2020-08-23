class Entry < ApplicationRecord
  belongs_to :user

  #has_many :tasks, dependent: :destroy
  belongs_to :task
end
