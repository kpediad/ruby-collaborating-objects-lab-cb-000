class Artist

  @@all = []
  attr_accessor :name, :songs

  def initialize(name)
    @songs = []
    @name = name
  end

  def add_song(song)
    self.songs << song
  end

  def save
    @@all << self
  end

  def print_songs
    self.songs.each{|song| puts song.name}
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    artist = self.all.find{|artist| artist.name == name} || self.new(name)
    artist.save unless self.all.include?(artist)
    artist
  end



end
