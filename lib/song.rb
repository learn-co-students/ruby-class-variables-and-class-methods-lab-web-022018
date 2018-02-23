require "pry"

class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
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

  def self.artist_count
    hash = Hash.new(0)
    @@artists.each do |i|
      hash[i] += 1
    end
    hash
  end

  def self.genre_count
    hash = Hash.new(0)
    @@genres.each do |i|
      hash[i] += 1
    end
    hash
  end
  
end
