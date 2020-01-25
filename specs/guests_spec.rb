require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
require_relative('../guests')
class TestGuest < Minitest::Test

  def setup
    @guest1 = Guest.new("Alan", 38)
    @guest2 = Guest.new("Malcom", 17)
    @guest3 = Guest.new("Luke", 28)
  end

  def test_guest_name
    assert_equal("Alan", @guest1.name)
  end

  def test_guest_age
    assert_equal(17, @guest2.age)
  end

end
