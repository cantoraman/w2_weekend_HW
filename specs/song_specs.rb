require ("minitest/autorun")
require_relative("../song.rb")

class SongTest < Minitest::Test

  def setup
    @song1 = Song.new("Can't Buy Me Love", 2.11)
    @song2 = Song.new("A Hard Day's Night", 2.32)
    @song3 = Song.new("All My Loving", 2.04)
    @song4 = Song.new("With A Little Help From My Friends", 2.44)
    @song5 = Song.new("I Saw Her Standing There", 2.55)
  end


  def test_song_name
    assert_equal("Can't Buy Me Love", @song1.name)
  end

  def test_song_length
    assert_equal(2.55, @song5.length)
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
