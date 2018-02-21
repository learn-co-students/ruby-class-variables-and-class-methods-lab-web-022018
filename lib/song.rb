class Song

  @@count = 0
  @@genre = []
  @@list = []

  def initialize(name, genre)
    @name = name
    @genre = genre
    @@count += 1
    @@genre << genre
    @@list << self
  end

  def self.genre_count
    @@genre.count
  end

  def self.artist_count
  end

end
