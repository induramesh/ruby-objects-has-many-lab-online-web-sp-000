class Song 
  
  attr_accessor :name, :artist 
  @@all = []

  def initialize(name, artist=nil)
    @name = name
    @artist = artist
    @@all << self
  end
  
  #def artist=(artist)
    @artist = artist
    @artist.add_song(self)
  end

  def artist_name
    if self.artist != nil 
      self.artist.name
    else
      nil 
    end 
  end

  def self.all
    @@all
  end
  
end