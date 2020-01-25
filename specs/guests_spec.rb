require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
require_relative('../guests')
class TestGuests < Minitest::Test

  def setup
    @guest1 = Guest.new("Alan", 38)
    @guest2 = Guest.new("Malcom", 17)
    @guest3 = Guest.new("Luke", 28)
  end

end
