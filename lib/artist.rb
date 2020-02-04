require 'pry'

class Artist
    attr_accessor :name
    # @@all = []

    def initialize (name)
        @name = name
        @@all << self
    end

    def add_song(song)
       song.artist = self 
    end

    #the name string is being saved as nil vvv

    def songs
        # binding.pry
        # if it's not nil
        Song.all.select {|instance| instance.artist == self}
        # array = Song.all.each.reject {|instance| instance == nil}
        # array.select {|instance| instance.artist == self.name}
        # array.select {|instance| instance == self}
        # binding.pry
        # print_songs
        # binding.pry
    end

    def self.find_or_create_by_name(queried_name)
        # if Artist.all.find {|instance| instance.name == queried_name} == nil
        variable = Artist.all.find  {|instance| instance.name == queried_name}
            if variable
                variable
            else
                Artist.new(queried_name)
            end
    end

    def print_songs
        
        # array = Song.all.select {|instance| instance.artist == self}
        # array.each {|instance| puts instance.name}
        Song.all.select {|instance| instance.artist == self}.each {|instance| puts instance.name}
    end

    def self.all
        @@all
    end
end