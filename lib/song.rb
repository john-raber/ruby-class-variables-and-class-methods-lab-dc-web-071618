class Song
  attr_reader :name, :artist, :genre

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
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genres_with_count = {}

    @@genres.each do |genre|
      genres_with_count[genre] = @@genres.count(genre)
    end
    genres_with_count
  end

  def self.artist_count
    artists_with_count = {}

    @@artists.each do |artist|
      artists_with_count[artist] = @@artists.count(artist)
    end
    artists_with_count
  end
end
