require 'pry'


class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []



  def initialize(name, artist, genre)
     @name = name
     @artist = artist
     @genre = genre
     @@count += 1
     @@artists << artist
     @@genres << genre
  end



  def self.count
    @@count
  end

  def self.artists
    answer = @@artists.each { |artist| puts artist}
    answer.uniq
  end

  def self.genres
    answer2 = @@genres.each { |genre| puts genre}
    answer2.uniq
  end


  def self.genre_count
    genre_hash = {}
    list = @@genres.each { |genre| puts genre}
    @@genres.each { |genre| genre_hash[genre] = list.count(genre)}
    genre_hash

  end

  def self.artist_count
    artist_hash = {}
    list2 = @@artists.each { |artist| puts artist}
    @@artists.each { |artist| artist_hash[artist] = list2.count(artist)}
    artist_hash
  end

end
