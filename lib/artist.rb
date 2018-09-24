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
    self.songs.each{|song| puts song}
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    self.all.find{|artist| artist.name == name} || self.new(name)
  end



end
