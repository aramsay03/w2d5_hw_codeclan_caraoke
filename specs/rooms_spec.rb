require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
require_relative('../rooms')
require_relative('../guests')
require_relative('../songs')
require('pry-byebug')
class TestRoom < Minitest::Test

 def setup
    @room1 = Room.new("Room 1", 2)
    @room2 = Room.new("Room 2", 3)

    @guest1 = Guest.new("Alan", 38)
    @guest2 = Guest.new("Malcom", 17)
    @guest3 = Guest.new("Luke", 28)
    @guest4 = Guest.new("Peter", 22)
    @guest5 = Guest.new("Ali", 34)

    @song1 = Song.new("Same Old Song", "Gruff Rhys")
    @song2 = Song.new("Where's My Tribe", "Charlene Soraia")
    @song3 = Song.new("Moment Of Surrender", "Nick Mulvey")

    @playlist = [@song1, @song2, @song3]
  end

  def test_room_name
    assert_equal("Room 1", @room1.name)
  end

  def test_room_capacity
   assert_equal(2, @room1.capacity)
  end

  def test_add_guest_to_room
    # binding.pry
    @room1.add_guest_to_room(@guest1.name)
    assert_equal(["Alan"], @room1.guests)
  end

  def test_add_guests_to_room__multiple_guests_and_rooms
    # binding.pry
    @room1.add_guest_to_room(@guest1)
    @room1.add_guest_to_room(@guest2)
    @room2.add_guest_to_room(@guest3)
    assert_equal(2, @room1.guests.size)
    assert_equal(1, @room2.guests.size)
  end

  def test_add_guests_to_room__multiple_guests_and_rooms
    # binding.pry
    @room1.add_guest_to_room(@guest1)
    @room1.add_guest_to_room(@guest2)
    @room2.add_guest_to_room(@guest3)
    assert_equal(2, @room1.guests.size)
    assert_equal(1, @room2.guests.size)
  end

  def test_remove_guest_from_room
    @room1.add_guest_to_room(@guest1)
    @room1.add_guest_to_room(@guest2)
    # binding.pry
    @room1.remove_guest_from_room(@guest1)
    assert_equal(1, @room1.guests.size)
  end

  def test_check_number_guests_in_room
    @room1.add_guest_to_room(@guest1)
    @room1.add_guest_to_room(@guest2)
    @room1.add_guest_to_room(@guest3)
    assert_equal(3, @room1.check_number_guests_in_room)
  end

  def test_add_songs_to_room
    # binding.pry
    @room1.add_songs_to_room(@playlist)
    assert_equal(@playlist, @room1.songs[0])
  end

  # def test_add_guests_to_room_with_checks__check_room_capasity
  #   # binding.pry
  #   @room1.add_guest_to_room_with_checks(@room1, @guest1)
  #   @room1.add_guest_to_room_with_checks(@room1, @guest2)
  #   @room1.add_guest_to_room_with_checks(@room1, @guest3)
  #   assert_equal(2, @room1.guests.size)
  # end



end
