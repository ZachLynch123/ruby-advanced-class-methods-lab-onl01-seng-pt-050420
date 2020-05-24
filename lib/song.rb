class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  
  
  def self.create
    song = Song.new 
    song.save
    song
  end
  
  def self.new_by_name(song_name)
    song = Song.new
    song.name = song_name
    song.save
    song
  end
  
  def self.create_by_name(song_name)
    song = Song.new
    song.name = song_name
    song.save
    song
  end
  
  def self.find_by_name(query)
    self.all.find{|song|
      song.name == query
    }
    
  end
  
  def self.find_or_create_by_name(query)
    if self.find_by_name(query)
    else
      self.create_by_name(query)
    end
  end
  
  
  def self.alphabetical
    self.all.sort_by(&:name)
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
