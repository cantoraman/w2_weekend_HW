require ("minitest/autorun")
require_relative("../guest.rb")
require_relative("../song.rb")
require_relative("../room.rb")

class RoomTest < Minitest::Test

  def setup
    @guest1 = Guest.new("John", 100, "Can't Buy Me Love")
    @guest2 = Guest.new("Paul", 50, "All My Loving")
    @guest3 = Guest.new("George", 30, "A Hard Day's Night")
    @guest4 = Guest.new("Ringo", 40, "With A Little Help From My Friends")
    @guest5 = Guest.new("Pete", 10, "Twist and Shout")
    @guest6 = Guest.new("James", 60, "The Unforgiven")
    @guest7 = Guest.new("Bob", 3, "Blowin in the Wind")

    @song1 = Song.new("Can't Buy Me Love", 2.11)
    @song2 = Song.new("A Hard Day's Night", 2.32)
    @song3 = Song.new("All My Loving", 2.04)
    @song4 = Song.new("With A Little Help From My Friends", 2.44)
    @song5 = Song.new("I Saw Her Standing There", 2.55)
    songs=[@song1,@song2,@song3,@song4,@song5]
    @room1 = Room.new(1, 0, songs, 4, 5)
  end

  def test_room_song_list
    assert_equal(5, @room1.song_list.length)
  end

  def test_check_guests_in__normal
    queue0 = [@guest1, @guest2, @guest3, @guest4]
    #Normal queue
    @room1.guest_taker(queue0)
    assert_equal(4, @room1.guests_inside.length)
  end

  def test_check_guests_in__extra_guest
    queue1 = [@guest1, @guest2, @guest3, @guest4, @guest5] #Extra guest
    @room1.guest_taker(queue1)
    assert_equal(true, @room1.guests_inside.include?(@guest2))
    assert_equal(false, @room1.guests_inside.include?(@guest5))
  end

  def test_check_guests_in__poorman
    queue2 = [@guest1, @guest7, @guest3, @guest4]
    @room1.guest_taker(queue2)
    #Poor man in the second place
    assert_equal(true, @room1.guests_inside.include?(@guest3))
    assert_equal(false, @room1.guests_inside.include?(@guest7))
  end


  def test_check_guests_out__removes_2
    queue0 = [@guest1, @guest2, @guest3, @guest4]
    @room1.guest_taker(queue0)
    @room1.guest_remover([@guest2, @guest3])
    assert_equal(2, @room1.guests_inside.length)
  end

  def test_check_guests_out__no_guest_to_remove
    queue0 = [@guest1, @guest2, @guest3, @guest4]
    @room1.guest_taker(queue0)
    @room1.guest_remover([@guest5, @guest6])
    assert_equal(4, @room1.guests_inside.length)
  end

  def test_check_guests_out__1in_1not
    queue0 = [@guest1, @guest2, @guest3, @guest4]
    @room1.guest_taker(queue0)
    @room1.guest_remover([@guest2, @guest6])
    assert_equal(3, @room1.guests_inside.length)
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
