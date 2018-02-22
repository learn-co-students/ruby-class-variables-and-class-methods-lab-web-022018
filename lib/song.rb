class Song

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

  attr_accessor :name, :artist, :genre

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    self.histogram(@@genres)
  end

  def self.artists
    @@artists.uniq
  end

  def self.artist_count
    self.histogram(@@artists)
  end

  def self.histogram(arr)
    result = {}
    arr.each do |element|
      result[element] ||= 0
      result[element] += 1
    end
    result
  end
end
