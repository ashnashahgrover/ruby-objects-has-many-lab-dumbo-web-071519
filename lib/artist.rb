require 'pry'

class Artist

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def songs
    Song.all.select {|song| song.artist = self}
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(name)
    new_song = Song.new(name)
    self.add_song(new_song)
  end

  def self.song_count
    Song.all.map {|song| song.artist_name}.compact.count
  end

end
