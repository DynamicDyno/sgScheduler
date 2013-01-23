class Reservation < ActiveRecord::Base
  validate :start_cant_be_after_end, :room_available

  attr_accessible :end_date, :room_id, :start_date, :user_id

  belongs_to :user
  belongs_to :room

  validates_presence_of :end_date, :start_date, :room_id, :user_id

  def start_cant_be_after_end
    if start_date >=end_date
      errors.add(:end_date, "must be after the Start Date")
    end
  end

  def room_available
  reservations = Reservation.find_by_sql ["SELECT * FROM reservations res WHERE res.room_id = ? AND res.start_date <= ? AND res.end_date > ?", room_id, start_date, start_date]

  unless reservations.empty?
    errors.add(:start_date, " is in the middle of an existing reservation, consider moving your Start Date forward")
  end

  reservations = Reservation.find_by_sql ["SELECT * FROM reservations res WHERE res.room_id = ? AND res.start_date >= ? AND res.start_date < ?", room_id, start_date, end_date]

  unless reservations.empty?
    errors.add(:end_date, " is in the middle of an existing reservation, condsider drastically shortening your trip")
  end



  end

end

