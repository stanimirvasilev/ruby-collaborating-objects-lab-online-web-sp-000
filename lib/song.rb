require "pry"
class Song
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all 
  @@all  
  end 
  
  
  def artist_name=(name)
  self.artist = Artist.find_or_create_by_name(name)
  artist.add_song(name)
  end
  
  
  def self.new_by_filename(tile)
    song_info = tile.chomp(".mp3").split(" - ")
    binding.pry
    song = Song.new(song_info[1])
    song.artist_name=(song_info[0])
    song
  end
  
  
  
  
  
  
end