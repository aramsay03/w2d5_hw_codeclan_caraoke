require('pry-byebug')

class Room

  attr_reader :name, :capacity, :guests, :songs

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @guests = []
    @songs = []
  end

  def add_guests_to_room(guest)
    @guests.push(guest)
  end

  # def add_guest_to_room(guest)
  #   # binding.pry
  #   # 2 Arrguments will need to enter function (room, guest)
  #   # Add guest to specific room using if statment
  #   @guests[] << guest.name
  # end








end
