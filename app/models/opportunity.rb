class Opportunity < ApplicationRecord
  belongs_to :client
  has_many :tasks, dependent: :destroy
end
