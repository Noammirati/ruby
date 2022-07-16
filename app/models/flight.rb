class Flight < ApplicationRecord
  has_many :bookings

  def getDepartureDay
    return self.departure_date.strftime("%d/%m/%Y")
  end

  def getDepartureTime
    return self.departure_date.strftime("%HH%M")
  end

  def getArrivalTime
    return (self.departure_date + (self.duration * 60)).strftime("%HH%M")
  end

  def getArrivalDay
    return self.departure_date + (self.duration * 60).str
  end

  def isArrivalNextDay
    return (self.departure_date + (self.duration * 60)).day == self.departure_date.next_day
  end
end
