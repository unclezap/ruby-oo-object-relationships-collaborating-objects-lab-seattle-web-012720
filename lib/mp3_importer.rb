require 'pry'

class MP3Importer
    attr_accessor :path

    def initialize (path)
        @path = path
    end
    
    # binding.pry
    def files
        files = Dir.glob("#{@path}/*.mp3")
        em_pee_threes = files.map {|file| file.delete_prefix("./spec/fixtures/mp3s/")}
        em_pee_threes
        
        # binding.pry
        
    end
    
    def import
        # binding.pry
        # test = files
        # # binding.pry
        files.each {|file| Song.new_by_filename(file)}

    # binding.pry
    end
end