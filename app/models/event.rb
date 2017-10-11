class Event < ApplicationRecord
belongs_to :user
has_and_belongs_to_many :themes

  validates :name, presence: true
  validates :description, presence: true
  validates :location, presence: true
  validates :price, presence: true
  validates :capacity, presence: true
  #validates :includes_food, presence: true
  #validates :includes_drinks, presence: true
  #validates :starts_at, presence: true
  #validates :ends_at, presence: true
  #validates :active, presence: true


end
