class Client < ApplicationRecord
  has_many :contacts, dependent: :destroy
  has_many :opportunities, dependent: :destroy
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end