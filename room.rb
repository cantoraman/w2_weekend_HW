class Room

  attr_reader :id, :till
  attr_accessor :song_list
  
  def initialize(id, till, song_list)
    @id = id
    @till = till
    @song_list = song_list
  end




end
