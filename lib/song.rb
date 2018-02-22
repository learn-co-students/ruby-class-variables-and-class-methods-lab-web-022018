class Song
  attr_reader :name, :artist, :genre
  @@count=0
  @@genres=[]
  @@artists=[]


  def initialize(name, artist, genre)
    @genre=genre
    @name=name
    @artist=artist
    @@artists<<artist
    @@genres<<genre
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
    genre_count={}
    @@genres.uniq.map{|key| genre_count.store(key, @@genres.count(key))}
    return genre_count
  end

  def self.artist_count
    artist_count={}
    @@artists.uniq.map{|key| artist_count.store(key, @@artists.count(key))}
    return artist_count
  end

end
