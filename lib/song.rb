require 'pry'

class Song
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
    @@count += 1
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genre_count
    genres_hash = Hash.new
   @@genres.each do |x| 
     genres_hash[x] += 1 if genres_hash[x]
     genres_hash[x] = 1 if !genres_hash[x]
   end
   genres_hash
  end
  
  def self.artist_count
    artists_hash = Hash.new
    @@artists.each do |x| 
      artists_hash[x] += 1 if artists_hash[x]
      artists_hash[x] = 1 if !artists_hash[x]
    end
    artists_hash
  end
  
end