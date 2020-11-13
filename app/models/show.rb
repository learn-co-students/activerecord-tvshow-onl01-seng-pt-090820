class Show < ActiveRecord::Base

    def self.highest_rating
      s =  Show.order(:rating).last
      s.rating
    end

    def self.most_popular_show
      Show.order(:rating).last
    end

    def self.lowest_rating
        s =  Show.order(:rating).first
        s.rating
    end

    def self.least_popular_show
        Show.order(:rating).first
    end

    def self.ratings_sum
        Show.sum("rating")
    end

    def self.popular_shows
        Show.where("rating > 5")
    end

    def self.shows_by_alphabetical_order
        Show.order(:name)
    end

end