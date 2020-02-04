require 'pry'

class Song
    attr_accessor :name, :artist
    @@all = []

    def initialize (name)
        @name = name
        @@all << self
    end

    def artist_name=(artist)
        self.artist = Artist.find_or_create_by_name(artist)
    end

    # binding.pry
    def self.new_by_filename (file_name)
        
        # files = Dir.glob("#{@path}/*.mp3")
        # em_pee_threes = files.map {|file| file.delete_prefix("./spec/fixtures/mp3s/")}
        # titles = em_pee_threes.map do |file|
        #     title = file.split(" - ")
        #     title[1]
        # end
        # # binding.pry
        # titles.each {|title| Song.new_by_file_name(title)}
        # song_array = []
        # binding.pry

        song_array = file_name.split(' - ')
        song_artist = song_array[0]
        song_title = song_array[1]
        # song_artist_array = song_array[1].split('.')
        # song_artist = song_artist_array[0]
        new_song = Song.new(song_title)
        # binding.pry
        artist_instance = Artist.new(song_artist)
        new_song.artist=(artist_instance)
        new_song
        # binding.pry
        # Artist.find_or_create_by_name(song_artist)
        # new_song.artist_name=(song_artist)
        
        # song_name
        # binding.pry
        
    end

    def self.all
        @@all
    end

end