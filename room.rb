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

  def guest_remover(names)
    removed_list = []
    for name in names
      removed_list.push(@guests_inside.delete(name))
    end
    if removed_list.length != 0
      p "These people left the premises:"
      removed_list.each {|x| p x.name}
    else
      p "They were not inside."
    end
  end






end
