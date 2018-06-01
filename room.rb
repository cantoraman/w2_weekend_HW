class Room

  attr_reader :id, :till, :capacity
  attr_accessor :song_list

  def initialize(id, till, song_list, capacity)
    @id = id
    @till = till
    @song_list = song_list
    @capacity = capacity
  end




end
