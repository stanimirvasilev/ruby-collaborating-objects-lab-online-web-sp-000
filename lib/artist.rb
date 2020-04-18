require "pry"
class Artist 
  attr_accessor :name, :songs 
  
  @@all = []
  
  def initialize(name)
   @name = name
   @@all << self
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def songs
    Song.all.select { |song|  song.artist == self
      
    }
  end

  def self.find_or_create_by_name(name)
    if self.all.detect { |artist| artist.name == name }
      self.all.detect { |artist| artist.name == name }
    else artist = Artist.new(name)
      @@all  << self 
       self.all.detect { |artist| artist.name == name }
    end
  end
  
  def print_songs
    self.songs.each {|song| puts song.name
    }
    
  end
#binding.pry
  
end