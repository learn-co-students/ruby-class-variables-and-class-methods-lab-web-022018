require 'pry'

class Song
  attr_accessor :name, :artist, :genre

@@count = 0
@@genres = []
@@artists = []



  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << @artist
    @genre = genre
    @@genres << @genre
    @@count += 1
    @@genre_count = Hash.new(0)
    @@artist_count = Hash.new(0)
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
  @@genres.each do |genre|
    @@genre_count[genre] += 1
  end
  @@genre_count
end

def self.artist_count
  @@artists.each do |artist|
    @@artist_count[artist] += 1
  end
  @@artist_count
end

end
