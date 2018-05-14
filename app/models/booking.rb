class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :car

validates :check_in, :check_out, presence: true


validate :date_checker,

  def date_checker
    if check_in.present? && check_in < Date.today
      errors.add(:check_in, "can't be in the past")
    elsif check_out < check_in
      errors.add(:check_out, "check out must be after check in ")
    end
  end
end
