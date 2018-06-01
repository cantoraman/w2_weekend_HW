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
      if guest.wallet>@fee
        @guests_inside.push(guest)
        guest.wallet -= @fee
      end
    end
  end


end
