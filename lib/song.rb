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
  
  def self.genre_count
    genreshash = {}
    @@genres.each do |x|
      genreshash[x] = 0 if !genreshash[x]
      genreshash[x] += 1
    end
      genreshash
  end
  
  def self.artist_count
    artisthash = {}
    @@artists.each do |x|
      artisthash[x] = 0 if !artisthash[x]
      artisthash[x] += 1
    end
      artisthash
  end
  
end