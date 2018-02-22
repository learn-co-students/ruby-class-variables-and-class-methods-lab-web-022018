class Song

  @@count = 0
  @@genres = []
  @@artists = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @genre = genre
    @artist = artist
    @@count += 1
    @@genres << genre
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
    out = {}
    @@genres.each do |genre|
      if out.key? genre
        out[genre] += 1
      else
        out[genre] = 1
      end
    end
    out
  end

  def self.artist_count
    out = {}
    @@artists.each do |artist|
      if out.key? artist
        out[artist] += 1
      else
        out[artist] = 1
      end
    end
    out
  end

end
