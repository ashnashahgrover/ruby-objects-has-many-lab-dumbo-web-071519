class Song

  @@all = []

  attr_reader :name
  attr_accessor :artist

  def initialize(name)
    @name = name
    @@all << self
  end

  def artist_name
    if self.artist
      self.artist.name
    end
  end

  def self.all
    @@all
  end

end
