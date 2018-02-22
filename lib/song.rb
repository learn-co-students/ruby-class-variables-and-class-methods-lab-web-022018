require 'pry'

class Song

  @@artists = []
  @@genre_count = {}
  @@count = 0
  @@genres = []
  @@artist_count = {}

  attr_reader :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @@count +=1
    @genre=genre
    @@genres << genre
    @artist = artist
    @@artists << artist

  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    @@genres.uniq.each {|genre| @@genre_count[genre] = @@genres.count(genre)}
    @@genre_count
  end

  def self.artist_count
    @@artists.uniq.each {|artist| @@artist_count[artist] = @@artists.count(artist)}
    @@artist_count
  end




end
