require 'pry'

class Song 
  attr_accessor :name, :artist, :genre 
  
  @@count = []
  @@artists = []
  @@genres = []
  @@count = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist 
    @genre = genre
    
    @@artists << artist
    @@genres << genre 
  end
  
  def self.count 
    @@count.count
  end
  
  def self.artists 
    @@artists.uniq!
  end
  
  def self.genres 
    @@genres.uniq!
  end
  
  def self.genre_count 
    arr = {}
    @@genres.each do |genre| 
      if arr[genre] 
        arr[genre] += 1 
      else 
        arr[genre] = 1
      end
    end
    arr
  end
end