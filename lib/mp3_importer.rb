class MP3Importer

  def initialize(path)
    @path = path
  end

  def files
    Dir[self.path]
  end

  def import
    self.files.each{|filename| Song.new_by_filename(filename)}
  end

end
