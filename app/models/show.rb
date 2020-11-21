class Show < ActiveRecord::Base
  
  def self.highest_rating
    h_rating = Show.maximum('rating')
    h_rating
  end

  def self.most_popular_show
    #use highest rating to find highest
    #return the row for the one found
    most_pop = self.highest_rating
    the_show = Show.find_by("rating = ?", most_pop)
  end

  def self.lowest_rating
    l_rating = Show.minimum('rating')
    l_rating
  end

  def self.least_popular_show
    least_pop = self.lowest_rating
    the_show = self.find_by("rating = ?", least_pop)
  end

  def self.ratings_sum
    total = 0
    movies = self.all
    count = movies.each do |r| 
      total += r.rating
    end
    total
  end

  def self.popular_shows
    most_pop = self.all.where("rating > ?", 5)
    most_pop
  end

  def self.shows_by_alphabetical_order
    #alph_array = []
    alph = self.order(:name)
    alph
  end

end