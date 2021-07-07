class Show < ActiveRecord::Base
    
    #CLASS METHODS
    def self.highest_rating
        self.maximum("rating")
    end

    def self.most_popular_show
        self.where("rating = ?", self.highest_rating)[0]
    end

    def self.lowest_rating
        self.minimum("rating")
    end

    def self.least_popular_show
        self.where("rating = ?", self.lowest_rating)[0]
        # binding.pry
    end

    def self.ratings_sum
        self.sum("rating")
    end

    def self.popular_shows
        shows = []
            self.all.each do |m|
                if m.rating > 5
                    shows << m
                end
            end
        shows            
    end

    def self.shows_by_alphabetical_order
        self.order('name ASC')
    end
end
