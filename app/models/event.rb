class Event < ApplicationRecord
belongs_to :user
has_and_belongs_to_many :themes
has_many :photos
has_many :registrations, dependent: :destroy
has_many :guests, through: :registrations, source: :user

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

  def bargain?
      price < 4
    end

    def self.order_by_price
    order :price
  end

end
