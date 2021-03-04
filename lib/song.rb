class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []
    @@genre_count = {}
    @@artist_count = {}

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq 
    end

    def self.artists
        @@artists.uniq

    end

    def self.genre_count
        @@genres.each do |genre| 
            if @@genre_count.include?(genre)
                 @@genre_count[genre] += 1 #updating the count if the genres is in there
                                            #adding one to total and setting equal to that total 
            else 
                @@genre_count[genre] = 1 #if it doesnt already include the genres, were going to set their key and now there is 1 song
            end
        end
        @@genre_count
    end

    def self.artist_count
        @@artists.each do |artist| 
            if @@artist_count.include?(artist)
                 @@artist_count[artist] += 1 #updating the count if the artist is in there
                                            #adding one to total and setting equal to that total 
            else 
                @@artist_count[artist] = 1 #if it doesnt already include the artist, were going to set their key and now there is 1 song

            end
        end
        @@artist_count
    end

end