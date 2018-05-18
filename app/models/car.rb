class Car < ApplicationRecord

  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings

  validates :year_made, presence: true, numericality: true
  validates :price, presence: true, numericality: true

  validates_associated :bookings

  validates :user,  presence: true
  validates :make, presence: true
  validates :car_model,  presence: true

  validates :photo, presence: true

  validates :engine_size, numericality: true
  validates :mileage, numericality: { greater_than: 1, message: "must be greater that zero"}
  validates :seats, numericality: true
  validates :doors, numericality: true
  validates :bhp, numericality: true

  validates :fuel_type, :inclusion => { :in => ["Petrol", "Diesel", "Electric", "petrol", "diesel", "electric"],
    message: "%{value} is not a valid fuel type" }, allow_nil: true

  validates :transmission, presence: true, :inclusion => { :in => ["Automatic" "Semi-auto", "Manual", "automatic" "semi-auto", "manual"],
    message: "%{value} is not a valid transmission type" }, allow_nil: true

  def self.search(search)
    if search =~ /\A\d+\z/
      where("price < ?", search)
    else
      where("make ILIKE ? OR car_model ILIKE ?", "%#{search}%", "%#{search}%")
    end
  end
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  mount_uploader :photo, PhotoUploader
end
