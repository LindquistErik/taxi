# driver (full name)
# number of free seats
# car make
# car model
# car license plate

class Taxi
  attr_accessor :driver, :plates, :riders, :seats, :make, :model
  def initialize (driver, plates)
    @seats = 4
    @plates = plates
    @driver = driver
    @make = "Toyota"
    @model = "Prius"
    @riders = []
  end
  def pickup(rider)
    @riders << rider
  end


end
taxi1 = Taxi.new("Erik", "T12345")
taxi2 = Taxi.new("Willy", "T67890")
taxi3 = Taxi.new("Chris", "T11121")
taxi4 = Taxi.new("Andy", "T14151")
taxi5 = Taxi.new("Phil", "T14199")
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
  attr_accessor :riderQueue, :taxiQueue
  def initialize
    @riderQueue = []
    @taxiQueue = []
  end

  def addRider(rider)
    @riderQueue << rider
  end
  def addTaxi(taxi)
    @taxiQueue << taxi
  end
  def assignTaxi(taxi)
    # pull first four people from queue and place them in the first taxi
    # if riderqueue array is > 0 then we want to call a new taxi


      taxi.seats.times do
        taxi.pickup (@riderQueue.shift)
      break if @riderQueue == 0
      end


    # take first taxi out of queue
    @taxiQueue.shift




  end

end
my_service = Taxi_service.new
my_service.addRider("Kyle")
my_service.addTaxi(taxi1)
my_service.addRider("Kenny")
my_service.addTaxi(taxi2)
my_service.addRider("Cartman")
my_service.addTaxi(taxi3)
my_service.addRider("Stan")
my_service.addTaxi(taxi4)
my_service.addTaxi(taxi5)
my_service.addRider("Sunil")
my_service.addRider("Damon")
my_service.addRider("Alyssa")
my_service.addRider("Sunil1")
my_service.addRider("Damon1")
my_service.addRider("Alyssa1")
my_service.addRider("Sunil2")
my_service.addRider("Damon2")

# p my_service.riderQueue
my_service.assignTaxi(taxi1)
# # p my_service.riderQueue
# # print taxi1.riders
my_service.assignTaxi(taxi2)
my_service.assignTaxi(taxi3)


p taxi2.riders
p taxi1.riders
p taxi2.riders
p taxi3.riders
# p taxi4.riders
# p taxi5.riders
p my_service.taxiQueue
