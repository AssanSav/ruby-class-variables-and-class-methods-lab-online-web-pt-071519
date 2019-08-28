require 'pry'

class Song 
  attr_accessor :name, :artist, :genre 
  
  @@count = 0
  @@artists = []
  @@genres = []
  @@count = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist 
    @genre = genre
    #@@count += 1
    @@artists << artist
    @@genres << genre 
  end
  
  def self.count 
    @@count
  end
  
  def self.artists 
    @@artists.uniq!
  end
  
  def self.genres 
    @@genres.uniq!
  end
  
  def self.genre_count 
    arr = {}
    @@genres.each do {|genre| 
    if genre 
      arr[genre] += 1 
    else 
      arr[genre] + 1 
    end 
    arr
  end
end