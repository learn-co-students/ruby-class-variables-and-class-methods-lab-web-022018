require 'pry'

class Song
  attr_accessor :name, :artist, :genre
  
  @@all_genres = Hash.new(0)
  @@count = 0
  @@genres = []
  
  @@all_artists = Hash.new(0)
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@genres.push(genre)
    puts "ALL GENRES COUNT " + @@all_genres[genre].to_s
    @@all_genres[genre] += 1
    puts "ALL GENRES COUNT after increment " + @@all_genres[genre].to_s
    @@count+=1
    @@artists.push(artist)
    @@all_artists[artist] +=1
  end
  @@artists = []
  def self.artists
      @@artists.uniq!
  end
  
  def self.genres
    @@genres.uniq!
  end
  
  def self.genre_count
      @@all_genres
  end
  
  def self.artist_count
     @@all_artists
  end
  
  def self.count
      @@count
  end
end
