class Room

  attr_reader :id, :till, :capacity
  attr_accessor :song_list, :guests_inside

  def initialize(id, till, song_list, capacity, fee)
    @id = id
    @till = till
    @song_list = song_list
    @capacity = capacity
    @guests_inside = []
    @fee = fee
  end

  def guest_taker(queue)
    queue.each do |guest|
      if @guests_inside.length < @capacity
        if guest.wallet > @fee
          @guests_inside.push(guest)
          guest.wallet -= @fee
        else
        p "Sorry #{guest.name}, can't take in without the fee"
        end
      else
        p "Sorry #{guest.name}, the room's full"
      end
    end
  end


end
