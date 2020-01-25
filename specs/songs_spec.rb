require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
require_relative('../songs')
class TestSongs < Minitest::Test

  def setup
    @song1 = Songs.new("Same Old Song", "Gruff Rhys")
    @song2 = Songs.new("Where's My Tribe", "Charlene Soraia")
    @song3 = Songs.new("Moment Of Surrender", "Nick Mulvey")

    @songs = [@song1, @song2, @song3]
  end

  def test_song_name
    assert_equal("Same Old Song", @song1.name)
  end

  def test_song_artist
    assert_equal("Nick Mulvey", @song3.artist)
  end
end
