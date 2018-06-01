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
          @till+=@fee
          guest.check_the_songs(@song_list)
        else
        p "Sorry #{guest.name}, can't take in without the fee"
        end
      else
        p "Sorry #{guest.name}, the room's full"
      end
    end
  end

  def guest_remover(names)
    remove_count=names.length
    removed_list = []
    unfound = []
    for name in names
      item=@guests_inside.delete(name)
      if item!=nil
        removed_list.push(item)
      else
        unfound.push(name)
      end

    end
    if removed_list.length>0
    p "These people left the premises:"
    removed_list.each {|x| p x.name}
    end
    unfound.each {|y| p "#{y.name} was not inside."} if unfound.length > 0


  end






end
