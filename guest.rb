class Guest

  attr_reader :name, :fav_song
  attr_accessor :wallet

  def initialize(name, wallet, fav_song)
    @name = name
    @wallet = wallet
    @fav_song = fav_song
  end

  def check_the_songs(song_list)
    name_list = []
    song_list.each{|x| name_list.push(x.name)}
    if (name_list.include?(@fav_song))
      system('say "Woo" ')
    end
  end







end
