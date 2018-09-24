class Artist

  @@all = []
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @@all << self
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    self.all.find{|artist| artist.name == name} || self.new(name)
  end



end
