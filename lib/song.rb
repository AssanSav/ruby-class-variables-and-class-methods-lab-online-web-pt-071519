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
  end
  
  def self.count 
    @@count
  end
end