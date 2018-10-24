# driver (full name)
# number of free seats
# car make
# car model
# car license plate

class Taxi
  attr_accessor :driver, :plates
  def initialize (driver, plates)
    @seats = 4
    @plates = plates
    @driver = driver
    @make = "Toyota"
    @model = "Prius"
    @riders = riders
  end

  def make
    @make
  end

  def model
    @model
  end

  def seats
    @seats = 4
  end

  def driver
    @driver
  end

  def plates
    @plates
  end

  def riders
    @riders = []
  end


end
taxi1 = Taxi.new("Erik", "T12345")
taxi2 = Taxi.new("Willy", "T67890")
taxi3 = Taxi.new("Chris", "T11121")
taxi4 = Taxi.new("Andy", "T14151")

#
# Next we need to create the Taxi Service.
#
# Taxi Service will be a class with the following attributes:
#
# riderQueue (starts off as an empty array)
# taxiQueue (starts off as an empty array)
#


 # an addRider method that adds a name to the riderQueue array
# an addTaxi method that adds a Taxi object to the taxiQueue
# an assignTaxi method that adds all queued riders to taxis -- adding people to each taxi until all of its seats are full




class Taxi_service
  attr_accessor :rider
  def initialize ()
    @riderQueue = []
    @taxiQueue = []
    @rider = rider
    @taxiSeats = 4
    @addRider = addRider
  end
  def riderQueue
    @riderQueue = []
  end
  def taxiQueue
    @taxiQueue = []
  end
  def taxiSeats
    @taxiSeats = 4
  end
  def addRider(rider)
    @riderQueue << @rider
  end
  p addRider("Kyle")
end
