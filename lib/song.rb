require 'pry'

class Song
attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genre_count = {}
        @@genres.each do |x|
            if genre_count[x]
                genre_count[x] += 1
            else
                genre_count[x] = 1
            end
        end
        genre_count
    end

    def self.artist_count
        artist_count = {}
        @@artists.each do |x|
            if artist_count[x]
                artist_count[x] += 1
            else
                artist_count[x] = 1
            end
        end
        artist_count
    end

################
# I was trying to exercise DRY and create a new method that could be applied to the last two problems, but I don't think I have the concept right. 


    # def counting
    #     new_hash = {}
    #     @@all.each do |x|
    #     if new_hash[x]
    #         new_hash[x] += 1
    #     else
    #         new_hash[x] = 1
    #     end
    #     new_hash
    # end
end
