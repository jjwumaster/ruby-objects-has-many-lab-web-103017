require 'pry'

class Song
  def initialize(name)
    @name = name
  end

  attr_accessor :name, :artist

  def artist_name
    self.artist ? self.artist.name : nil
  end

  # binding.pry

end
