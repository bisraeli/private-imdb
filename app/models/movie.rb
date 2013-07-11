class Movie < ActiveRecord::Base
  attr_accessible :title, :year, :mpaa_rating, :plot
end