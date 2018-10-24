# Step 1
# To begin our taxi service, we need to define what a Taxi is in our app.
#
# For our purposes, a taxi needs to have the following attributes:
#
# driver (full name)
# number of free seats
# car make
# car model
# car license plate
# a riders list (starts off as an empty array)
# a method pickup that adds a name to the riders list
# Step 2
# Great, we have defined what a taxi is and given it some basic functionality.
#
# Next we need to create the Taxi Service.
#
# Taxi Service will be a class with the following attributes:
#
# riderQueue (starts off as an empty array)
# taxiQueue (starts off as an empty array)
# an addRider method that adds a name to the riderQueue array
# an addTaxi method that adds a Taxi object to the taxiQueue
# an assignTaxi method that adds all queued riders to taxis -- adding people to each taxi until all of its seats are full
# Step 3
# We now have the beginnings of a Taxi Service! Try it out by creating a new instance of your service, then a handfull of taxi instances. Try running your taxi service with some taxis and people!
#
require 'rspec'
require_relative 'taxi'

describe Taxi do
  before do
    @taxi = Taxi.new("Willy", "T12345")
  end
  # I can see there is a taxi
  it "is a taxi" do
    expect{@taxi}.to_not raise_error
    expect(@taxi).to be_a Taxi
  end
  # I can make sure the taxi has a make
  it "has a make" do
    expect{@taxi.make}.to_not raise_error
    expect(@taxi.make).to be_a(String)
  end
  # I can make sure the taxi has a model
  it "has a model" do
    expect{@taxi.model}.to_not raise_error
    expect(@taxi.model).to be_a(String)
  end
  # I can make sure the taxi has four seats
  it "has seats" do
    expect{@taxi.seats}.to_not raise_error
    expect(@taxi.seats).to be(4)
  end
  # I can make sure the taxi has driver
  it "has driver" do
    expect{@taxi.driver}.to_not raise_error
    expect(@taxi.driver).to be_a(String)
  end
  # I can make sure the taxi has plates
  it "has plates" do
  expect{@taxi.plates}.to_not raise_error
  expect(@taxi.plates).to be_a(String)
  end
  # I can make sure it as both
end

#
# Next we need to create the Taxi Service.
#
# Taxi Service will be a class with the following attributes:
#
# riderQueue (starts off as an empty array)
# taxiQueue (starts off as an empty array)
# an addRider method that adds a name to the riderQueue array
# an addTaxi method that adds a Taxi object to the taxiQueue
# an assignTaxi method that adds all queued riders to taxis -- adding people to each taxi until all of its seats are full
describe Taxi_service do
  before do
    @taxiQueue = []
    @riderQueue = []
    @taxiSeats = 4
  end
  # I can make sure there is a ride que
  it "has queue of taxis" do
    expect{@taxiQueue}.to_not raise_error
    expect(@taxiQueue).to be_a(Array)
  end
  # I can make sure that there is a list of waiting riders
  it "has list of people who need rides" do
    expect{@riderQueue}.to_not raise_error
    expect(@riderQueue).to be_a(Array)
  end
  # I can make sure only 4 people get in the taxi
  it "has only 4 seats" do
    expect{@taxiSeats}.to_not raise_error
    expect(@taxiSeats).to be(4)
  end


end
