require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
require_relative('../songs')
# require_relative('../rooms')
class TestSong < Minitest::Test

  def setup
    @song1 = Song.new("Same Old Song", "Gruff Rhys")
    @song2 = Song.new("Where's My Tribe", "Charlene Soraia")
    @song3 = Song.new("Moment Of Surrender", "Nick Mulvey")

    @songs = [@song1, @song2, @song3]
  end

  def test_song_name
    assert_equal("Same Old Song", @song1.name)
  end

  def test_song_artist
    assert_equal("Nick Mulvey", @song3.artist)
  end
end
