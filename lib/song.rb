require "pry"

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  @@genres_count = {}
  @@artist_count = {}
  # binding.pry
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1

    @@artists.push(artist)
    @@genres.push(genre)

    @@artist_count[artist] ? @@artist_count[artist] += 1 : @@artist_count[artist] = 1
    @@genres_count[genre] ? @@genres_count[genre] += 1 : @@genres_count[genre] = 1
  end

  def self.count
    @@count
  end

  def self.genres
    temp = []
    @@genres.each {|genre|
      temp.push(genre) if !temp.include?(genre)
    }
    temp
  end

  def self.artists
    temp = []
    @@artists.each {|artist|
      temp.push(artist) if !temp.include?(artist)
    }
    temp
  end

  def self.genre_count
    @@genres_count.each {|gen, count| @@genres_count[gen] = count/10}
  end

  def self.artist_count
    @@artist_count
  end
end
