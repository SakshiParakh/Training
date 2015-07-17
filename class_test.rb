class Song
  attr_accessor :name, :album, :artist
  def initialize(name, album, artist = '')
    @name = name
    @album = album
    @artist = artist
  end
 # attr_reader :name, :album, :artist
 # attr_writer :name, :album, :artist
end
s1 = Song.new("skyfall","oneD","john" ) 
s2 = Song.new("allofyou","legend","legend")
s3 = Song.new("vengaboys","venga","backstreet")

class Playlist
  attr_accessor :username, :songs
  def initialize(username, songs)
    @username = username
    @songs = songs
  end

  def num_songs(songs)
    p songs.count
  end

  def instance_test
    self.to_s
  end

  def self.class_test
    self.to_s
  end

  def song_name(songs)
    songs.each do |song|
      p song.name
    end
  end
end

class Bollywoodsongs < Song
  def initialize(name, album, artist)
    super
    @type = "hindi"
  end
end
    




b = Bollywoodsongs.new("radha","5min","SOTY")
p b
#p1.num_songs(p1.songs)
#p1.song_name(p1.songs)
#p p1.instance_test   
#p Playlist.class_test

