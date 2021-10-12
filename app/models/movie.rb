class Movie < ActiveRecord::Base
  def self.all_ratings
    ['G','PG','PG-13','R']
  end
  
  def self.with_ratings(ratings_list, sort_order)
    if ratings_list.empty?
      ratings_list = self.all_ratings
    end
    where(rating: ratings_list).order(sort_order)
  end
end
