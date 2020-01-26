require('pry-byebug')

class Room

  attr_reader :name, :capacity, :guests, :songs

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @guests = []
    @songs = []
  end

  def add_guest_to_room(guest)
    @guests.push(guest)
  end

  def remove_guest_from_room(guest)
    @guests.pop()

  end

  def check_number_guests_in_room
    return @guests.size
  end

  # def planet_names()
  #     return @planets.map {|planet| planet.name}
  #   end

  def add_songs_to_room(song)
    @songs.push(song)
  end

  # def add_guests_to_room_with_checks(room, guest)
  #   for guest in
  #   if check_number_guests_in_room <= room.capacity
  #     add_guest_to_room(guest)
  #   end
  # end

end
