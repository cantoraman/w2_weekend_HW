class Song

  attr_reader :name, :length

  def initialize(name, length)
    @name = name
    @length = length
  end


  def play_song()
    system('say "beep"')
    minutes=length.to_i
    seconds=((length-minutes)*100).to_i
    return "#{@name} has been played for #{minutes} minutes and #{seconds} seconds"
  end


end
