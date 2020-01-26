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

    @songs = [@song1, @song2, @song3]
  end

  def test_room_name
    assert_equal("Room 1", @room1.name)
  end

  def test_room_capacity
   assert_equal(2, @room1.capacity)
  end

  def test_add_guests_to_room
    # binding.pry
    @room1.add_guests_to_room(@guest1.name)
    assert_equal(["Alan"], @room1.guests)
  end

  def test_add_guests_to_room__multiple_guests_and_rooms
    # binding.pry
    @room1.add_guests_to_room(@guest1.name)
    @room1.add_guests_to_room(@guest2.name)
    @room2.add_guests_to_room(@guest3.name)
    assert_equal(["Alan", "Malcom"], @room1.guests)
    assert_equal(["Luke"], @room2.guests)
  end
end
