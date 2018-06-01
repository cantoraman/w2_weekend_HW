require ("minitest/autorun")
require_relative("../guest.rb")

class GuestTest < Minitest::Test

  def setup
    @guest1 = Guest.new("John", 100, "Can't Buy Me Love")
    @guest2 = Guest.new("Paul", 50, "All My Loving")
    @guest3 = Guest.new("George", 30, "A Hard Day's Night")
    @guest4 = Guest.new("Ringo", 40, "With A Little Help From My Friends")
  end


  def test_guest_name
    assert_equal("Paul", @guest2.name)
  end


  def test_guest_wallet
    assert_equal(30, @guest3.wallet)
  end

  def test_guest_fav_song
    assert_equal("A Hard Day's Night", @guest3.fav_song)
  end
  

end














# Create rooms, songs and guests
# Check in guests to rooms/Check out guests from rooms
# Add songs to rooms
#10 max per room
#more guests trying to be checked in than there is free space in the room?
# an entry fee - So the guests could have money so they can pay it.
# Guests could have a favourite song, and if their favourite song is on the room's playlist, they can cheer loudly! (return a string like "Whoo!")
# Rooms can keep track of the entry fees/spending of the guests - maybe add a bar tab/bar class?
# Add anything extra you think would be good to have at a karaoke venue!
#
