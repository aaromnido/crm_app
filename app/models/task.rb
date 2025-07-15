class Task < ApplicationRecord
  belongs_to :client
  belongs_to :opportunity, optional: true

  validates :title, presence: true
end