class Song

  attr_accessor :title

  def initialize(title)
    @title = title
  end

  def self.new_by_filename(filename)
    title = filename.split(" - ")[1]
    name = filename.split(" - ")[0]
    song = Song.new(title)
    song.artist_name = name
    song
  end

  def artist_name(name)
    Artist.find_or_create_by_name(name).add_song(self)
  end 
    